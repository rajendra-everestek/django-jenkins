#!/bin/bash

sudo apt install python3.8-venv

python3 -m venv /home/ubuntu/env

source /home/ubuntu/env/bin/activate

pip install django