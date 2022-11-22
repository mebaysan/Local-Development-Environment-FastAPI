FROM python:3.11

WORKDIR /app

COPY ./docker/.dockerignore /app/

COPY ./app/requirements.txt /app/

RUN pip install -r requirements.txt

COPY ./app/ /app/

ENV PYTHONPATH=/app

