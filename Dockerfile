FROM python:3.7-slim-buster

COPY requirements.txt .

RUN /usr/local/bin/python -m pip install --upgrade pip && pip install -r requirements.txt

WORKDIR /Tech-With-Nikhil-blog

COPY . /Tech-With-Nikhil-blog

EXPOSE 5000

CMD ["python3", "run.py"]
