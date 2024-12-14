# forms.py
from flask_wtf import FlaskForm
from wtforms import StringField, PasswordField, SubmitField, DateField, FileField
from wtforms.validators import DataRequired, Email, EqualTo

class RegistrationForm(FlaskForm):
    email = StringField('Email', validators=[DataRequired(), Email()])
    password = PasswordField('Password', validators=[DataRequired()])
    submit = SubmitField('Register')

class LoginForm(FlaskForm):
    email = StringField('Email', validators=[DataRequired(), Email()])
    password = PasswordField('Password', validators=[DataRequired()])
    submit = SubmitField('Login')

class HistoryForm(FlaskForm):
    year = StringField('Year', validators=[DataRequired()])
    event = StringField('Event', validators=[DataRequired()])
    submit = SubmitField('Add')

class MemberForm(FlaskForm):
    name = StringField('Name', validators=[DataRequired()])
    email = StringField('Email', validators=[DataRequired(), Email()])
    designation = StringField('Designation', validators=[DataRequired()])
    occupation = StringField('Occupation', validators=[DataRequired()])
    submit = SubmitField('Add')

class ProjectForm(FlaskForm):
    name = StringField('Project Name', validators=[DataRequired()])
    date = DateField('Date', format='%Y-%m-%d', validators=[DataRequired()])
    image = FileField('Project Image')
    submit = SubmitField('Add')
