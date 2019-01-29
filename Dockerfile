FROM ubuntu
LABEL Description="This is a hello-world example app"

RUN apt-get update
RUN apt-get install -y python-pip
COPY . /opt/hello_world
WORKDIR /opt/hello_world
RUN pip install -r requirements.txt

EXPOSE 8000


