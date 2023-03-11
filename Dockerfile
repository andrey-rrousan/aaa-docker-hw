FROM python:3.8

ENV FLASK_APP=app
LABEL version="0.0.1" author="andrey.ousan@gmail.com"

WORKDIR app
COPY . /app
RUN pip install -r requirements.txt

EXPOSE 8080

CMD python3 server.py