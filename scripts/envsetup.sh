#!/bin/bash

sudo apt install python3.8-venv

python3 -m venv /home/ubuntu/env

source /home/ubuntu/env/bin/activate

pip install -r /home/ubuntu/django-jenkins/requirements.txt

pip install gunicorn

cd /home/ubuntu/django-jenkins/djangojenkin

/home/ubuntu/env/bin/gunicorn --bind 0.0.0.0:8000 djangojenkin.wsgi
