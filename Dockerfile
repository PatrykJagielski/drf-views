FROM python:3.10-slim-buster

ENV PYTHONUNBUFFERED=1

WORKDIR /django

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY ./backend .

COPY ./docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]  