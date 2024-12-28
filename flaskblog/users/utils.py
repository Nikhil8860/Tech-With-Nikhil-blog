import os
import secrets
from PIL import Image
from flask import url_for, current_app

import smtplib as sl
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
from ..config import Config
import ssl


def save_picture(form_picture):
    random_hex = secrets.token_hex(8)
    _, f_ext = os.path.splitext(form_picture.filename)
    picture_fn = random_hex + f_ext
    picture_path = os.path.join(current_app.root_path, 'static/profile_pics', picture_fn)

    output_size = (125, 125)
    i = Image.open(form_picture)
    i.thumbnail(output_size)
    i.save(picture_path)
    return picture_fn


def send_reset_email(user):
    token = user.get_reset_token()
    # msg = Message('Password Reset Request',
    #               sender='deshiboys0@gmail.com',
    #               recipients=[user.email])
    body = f'''To reset your password, visit the following link:
{url_for('users.reset_token', token=token, _external=True)}
If you did not make this request then simply ignore this email and no changes will be made.
'''
    sendmail_attach_mktcloud(user.email, body)
    #     msg.body = f'''To reset your password, visit the following link:
    # {url_for('users.reset_token', token=token, _external=True)}
    # If you did not make this request then simply ignore this email and no changes will be made.
    # '''
    # mail.send(msg)


def sendmail_attach_mktcloud(to_mail, content=None, users_query=None):
    subject = "Please be informed - Query has been received mail from TechWithNikhil"
    if users_query:
        body = content + '\n\n\n\n' + users_query
    else:
        body = content
    sender_email = Config.ADMIN_MAIL
    password = Config.PASSWORD
    receiver_email = [to_mail]

    message = MIMEMultipart()
    message["From"] = sender_email
    message['To'] = receiver_email[0]
    message["Subject"] = subject
    message.attach(MIMEText(body, "plain"))
    text = message.as_string()
    context = ssl.create_default_context()
    with sl.SMTP_SSL("smtp.gmail.com", 465, context=context) as server:
        server.login(sender_email, password=password)
        server.sendmail(sender_email, receiver_email, text)
        print("Sent email with Subject --", subject)
