FROM ubuntu
LABEL Description="This is a hello-world example app"

RUN apt-get update
RUN apt-get install -y python-pip
RUN pip install django
WORKDIR /opt
RUN django-admin startproject hello_world

EXPOSE 8000

WORKDIR /opt/hello_world

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]


