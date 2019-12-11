FROM ubuntu:16.04

RUN apt-get udpate && apt-get install -y python python-pip

RUN pip install flask

COPY wsgi.py /opt/

ENTRYPOINT FLASK_APP=/opt/wsgi.py flask run --host=0.0.0.0 --port 8080
