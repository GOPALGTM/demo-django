# Pull base image
FROM python:3.10.6-slim-buster
RUN pip install --upgrade pip
# Install dependencies
RUN pip install Django==4.1.5
# Set work directory
WORKDIR /

ADD . .

EXPOSE 8000
CMD python3 manage.py runserver 0:8000