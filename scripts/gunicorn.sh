#!/usr/bin/bash
# sudo cp /home/ubuntu/django-jenkins/gunicorn/gunicorn.socket  /etc/systemd/system/gunicorn.socket
# sudo cp /home/ubuntu/django-jenkins/gunicorn/gunicorn.service  /etc/systemd/system/gunicorn.service

# sudo systemctl daemon-reload
# sudo systemctl start gunicorn.service
# sudo systemctl enable gunicorn.service

# gunicorn -c /home/ubuntu/django-jenkins/gunicorn/gunicorn_config.py djangojenkin.wsgi:application
/home/ubuntu/env/bin/gunicorn -c /home/ubuntu/django-jenkins/gunicorn/gunicorn_config.py djangojenkin.wsgi

sudo service nginx start
