FROM python:3.10-slim-buster

USER root

WORKDIR /src

ENV DB_USERNAME=hieupd
ENV DB_PASSWORD=hieupd123456
ENV DB_HOST=127.0.0.1
ENV DB_PORT=5432
ENV DB_NAME=hieupd_coworking_db

COPY ./analytics .

# Dependencies required for psycopg2 (used for Postgres client)
RUN apt update -y && apt install -y build-essential libpq-dev

# Dependencies are installed during build time in the container itself so we don't have OS mismatch
RUN pip install --upgrade pip setuptools wheel
RUN pip install -r requirements.txt

EXPOSE 5153

CMD python app.py
