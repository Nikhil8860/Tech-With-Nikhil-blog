from datetime import timedelta


class Config:
    SECRET_KEY = '5791628bb0b13ce0c676dfde280ba245'
    PWD = ''
    USR = 'root'
    DB = 'tech_with_Nikhil'
    SQLALCHEMY_DATABASE_URI = "mysql://root:@localhost/tech_with_Nikhil"
    # SQLALCHEMY_DATABASE_URI = "mysql://root:password@127.0.0.1:3308/purepython"
    MAIL_SERVER = 'smtp.googlemail.com'
    MAIL_PORT = 587
    MAIL_USE_TLS = True
    Debug = True
    ADMIN_MAIL = "deshiboys0@gmail.com"
    PASSWORD = "9582750901"
    PERMANENT_SESSION_LIFETIME = timedelta(days=31)
