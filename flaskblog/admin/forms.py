from flask_wtf import FlaskForm
from wtforms import StringField, SubmitField, SelectField, SelectMultipleField, DateField
from wtforms.validators import DataRequired
from wtforms.fields.html5 import TimeField


class AddBatchForm(FlaskForm):
    myChoices = [("Monday", "Monday"), ("Tuesday", "Tuesday"), ("Wednesday", "Wednesday"), ("Thursday", "Thursday"),
                 ("Friday", "Friday"), ("Saturday", "Saturday"), ("Sunday", "Sunday")]
    # myChoices = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    course = StringField('Course: ', validators=[DataRequired()])
    batch_days = SelectMultipleField(u'Days: ', choices=myChoices, validators=[DataRequired()])
    start_at = TimeField('Start at', validators=[DataRequired()])
    end_at = TimeField('End at', validators=[DataRequired()])
    date = DateField('Date', validators=[DataRequired()])
    submit = SubmitField('Add Batch')
