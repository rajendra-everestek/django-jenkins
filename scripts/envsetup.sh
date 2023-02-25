#!/bin/bash

sudo apt install python3.8-venv

python3 -m venv /var/lib/jenkins/workspace/Django-Admin/env

source /var/lib/jenkins/workspace/Django-Admin/env/bin/activate

pip install -r /var/lib/jenkins/workspace/Django-Admin/requirements.txt

pip install gunicorn

cd /var/lib/jenkins/workspace/Django-Admin/djangojenkin

/var/lib/jenkins/workspace/Django-Admin/env/bin/gunicorn --bind 0.0.0.0:80 djangojenkin.wsgi
