from flask_wtf import FlaskForm
from wtforms import StringField, SubmitField, TextAreaField, SelectField
from wtforms.validators import DataRequired


class PostForm(FlaskForm):
    myChoices = ['python', 'Data Structure and Algorithm', 'Django']
    title = StringField('Title', validators=[DataRequired()])
    content = TextAreaField('Content', validators=[DataRequired()])
    # course = StringField('Course', validators=[DataRequired()])
    course = SelectField(u'Choose Course', choices=myChoices, validators=[DataRequired()])
    submit = SubmitField('Post')
