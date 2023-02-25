#!/bin/bash

sudo apt install python3.8-venv

python3 -m venv /var/lib/jenkins/workspace/Django-Admin/env

source /var/lib/jenkins/workspace/Django-Admin/env/bin/activate

pip install django