from datetime import timedelta
import os


class Config:
    SECRET_KEY = '5791628bb0b13ce0c676dfde280ba245'
    # SQLALCHEMY_DATABASE_URI = 'sqlite:///applicants.sqlite3'
    PWD = ''
    USR = 'root'
    DB = 'tech_with_Nikhil'
    # SQLALCHEMY_DATABASE_URI = 'mysql://{}:{}@localhost:3306/{}'.format(USR, PWD, DB)
    SQLALCHEMY_DATABASE_URI = "mysql://root:@localhost/tech_with_Nikhil"
    MAIL_SERVER = 'smtp.googlemail.com'
    MAIL_PORT = 587
    MAIL_USE_TLS = True
    Debug = True
    ADMIN_MAIL = "deshiboys0@gmail.com"
    PASSWORD = "9582750901"
    PERMANENT_SESSION_LIFETIME = timedelta(days=31)
