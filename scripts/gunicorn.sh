#!/usr/bin/bash
sudo cp /home/ubuntu/django-jenkins/gunicorn/gunicorn.socket  /etc/systemd/system/gunicorn.socket
sudo cp /home/ubuntu/django-jenkins/gunicorn/gunicorn.service  /etc/systemd/system/gunicorn.service

systemctl daemon-reload
sudo systemctl start gunicorn.service
sudo systemctl enable gunicorn.service