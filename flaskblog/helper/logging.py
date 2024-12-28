import time
from flask import current_app as app
from flask import got_request_exception


class LogType:
    decorator = 'decorator'


def log_method(func):
    def wrapper(*args, **kwargs):
        start_time = time.time()
        res = func(*args, **kwargs)
        extra = {
            'method_name': func.__name__,
            'execution_time': time.time() - start_time
        }

        if app.debug:
            extra.update({'args': (args, kwargs),
                          'response': str(res)})
        print(extra)
        app.logger.debug(LogType.decorator, extra=extra)
        return res

    return wrapper


def log_exception(*args, **kwargs):
    app.logger.error(LogType.decorator, exc_info=True)


got_request_exception.connect(log_exception)
