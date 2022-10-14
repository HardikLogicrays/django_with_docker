FROM python:3

ENV PYTHONUNBUFFERED 1
RUN mkdir /app

WORKDIR /app

COPY requirements.txt /app/

RUN pip3 install -r requirements.txt

# COPY requirements.txt .
COPY . /app/

RUN python3 manage.py runserver 0.0.0.0:8000