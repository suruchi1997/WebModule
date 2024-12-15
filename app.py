# app.py
from flask import Flask, render_template, redirect, url_for, flash, request
from flask_sqlalchemy import SQLAlchemy
from flask_login import LoginManager, UserMixin, login_user, login_required, logout_user, current_user
from forms import RegistrationForm, LoginForm, HistoryForm, MemberForm, ProjectForm
from models import db, User, History, Member, Project
import os
from werkzeug.security import check_password_hash, generate_password_hash
from flask import session
# Initialize the Flask app
app = Flask(__name__)
app.config['SECRET_KEY'] = 'your_secret_key'  # Replace with a random secret key
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://root:Sherlock22@73.92.52.92/club_management'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
app.config['UPLOAD_FOLDER'] = 'static/uploads'
os.makedirs(app.config['UPLOAD_FOLDER'], exist_ok=True)

# Initialize the database
db.init_app(app)

# Setup Flask-Login
login_manager = LoginManager()
login_manager.init_app(app)
login_manager.login_view = 'login'

@login_manager.user_loader
def load_user(user_id):
    return User.query.get(int(user_id))

# Routes
@app.route('/')
def home():
    return render_template('home.html')

@app.route('/register', methods=['GET', 'POST'])
def register():
    form = RegistrationForm()
    if form.validate_on_submit():
        hashed_password = generate_password_hash(form.password.data)
        new_user = User(email=form.email.data, password=hashed_password)
        db.session.add(new_user)
        db.session.commit()
        #flash('Registration successful!', 'success')
        return redirect(url_for('login'))
    return render_template('register.html', form=form)

@app.route('/login', methods=['GET', 'POST'])
def login():
    form = LoginForm()
    if form.validate_on_submit():
        user = User.query.filter_by(email=form.email.data).first()


        if user:
            if check_password_hash(user.password, form.password.data):

                session['user_id'] = user.id

                #flash('Login successful!', 'success')
                return redirect(url_for('dashboard'))

        #flash('Login failed. Check your email and password.', 'danger')

    return render_template('login.html', form=form)

@app.route('/dashboard')
# @login_required
def dashboard():
    histories = History.query.all()
    members = Member.query.all()
    projects = Project.query.all()
    return render_template('dashboard.html', histories=histories, members=members, projects=projects)

@app.route('/logout')
# @login_required
def logout():
    logout_user()
    return redirect(url_for('login'))

# History routes
@app.route('/history', methods=['GET', 'POST'])
# @login_required
def history():
    form = HistoryForm()
    if form.validate_on_submit():
        new_history = History(year=form.year.data, event=form.event.data)
        db.session.add(new_history)
        db.session.commit()
        #flash('History entry added!', 'success')
        return redirect(url_for('history'))
    histories = History.query.all()
    return render_template('history.html', histories=histories, form=form)

@app.route('/edit_history/<int:id>', methods=['GET', 'POST'])
# @login_required
def edit_history(id):
    history = History.query.get_or_404(id)
    form = HistoryForm(obj=history)
    if form.validate_on_submit():
        history.year = form.year.data
        history.event = form.event.data
        db.session.commit()
        #flash('History entry updated!', 'success')
        return redirect(url_for('history'))
    return render_template('edit_history.html', form=form, history=history)

@app.route('/delete_history/<int:id>')
# @login_required
def delete_history(id):
    history = History.query.get_or_404(id)
    db.session.delete(history)
    db.session.commit()
    #flash('History entry deleted!', 'success')
    return redirect(url_for('history'))

# Member routes
@app.route('/members', methods=['GET', 'POST'])
# @login_required
def members():
    form = MemberForm()
    if form.validate_on_submit():
        new_member = Member(name=form.name.data, email=form.email.data, designation=form.designation.data, occupation=form.occupation.data)
        db.session.add(new_member)
        db.session.commit()
        #flash('Member added!', 'success')
        return redirect(url_for('members'))
    members = Member.query.all()
    return render_template('members.html', members=members, form=form)

@app.route('/edit_member/<int:id>', methods=['GET', 'POST'])
# @login_required
def edit_member(id):
    member = Member.query.get_or_404(id)
    form = MemberForm(obj=member)
    if form.validate_on_submit():
        member.name = form.name.data
        member.email = form.email.data
        member.designation = form.designation.data
        member.occupation = form.occupation.data
        db.session.commit()
        #flash('Member updated!', 'success')
        return redirect(url_for('members'))
    return render_template('edit_member.html', form=form, member=member)

@app.route('/delete_member/<int:id>')
# @login_required
def delete_member(id):
    member = Member.query.get_or_404(id)
    db.session.delete(member)
    db.session.commit()
    #flash('Member deleted!', 'success')
    return redirect(url_for('members'))

# Project routes
@app.route('/projects', methods=['GET', 'POST'])
# @login_required
def projects():
    form = ProjectForm()
    if form.validate_on_submit():
        if form.image.data:
            image_file = form.image.data
            image_filename = f"{image_file.filename}"
            image_file.save(os.path.join(app.config['UPLOAD_FOLDER'], image_filename))

            new_project = Project(name=form.name.data, date=form.date.data, image=image_filename)
            db.session.add(new_project)
            db.session.commit()
            #flash('Project added!', 'success')
            return redirect(url_for('projects'))
    projects = Project.query.all()
    return render_template('projects.html', projects=projects, form=form)


@app.route('/edit_project/<int:id>', methods=['GET', 'POST'])
# @login_required
def edit_project(id):
    project = Project.query.get_or_404(id)
    form = ProjectForm(obj=project)
    if form.validate_on_submit():
        project.name = form.name.data
        project.date = form.date.data
        db.session.commit()
        #flash('Project updated!', 'success')
        return redirect(url_for('projects'))
    return render_template('edit_project.html', form=form, project=project)




@app.route('/delete_project/<int:id>')
# @login_required
def delete_project(id):
    project = Project.query.get_or_404(id)
    db.session.delete(project)
    db.session.commit()
    #flash('Project deleted!', 'success')
    return redirect(url_for('projects'))



if __name__ == '__main__':
    with app.app_context():
        db.create_all()
    app.run(debug=True)
