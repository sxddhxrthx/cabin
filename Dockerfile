FROM ubuntu:latest

RUN /bin/sh -c mkdir /opt/cabinapp && mkdir /opt/cabinapp/app

WORKDIR /opt/cabinapp

RUN /bin/sh -c pip install flask

COPY app/* app/

CMD  [ "/bin/bash", "-c", "python3 /opt/cabinapp/app/app.py" ]
