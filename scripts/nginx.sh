sudo systemctl start gunicorn.socket
sudo systemctl enable gunicorn.socket

sudo apt install nginx -y 

sudo cp -rf /home/ubuntu/django-jenkins/nginx/nginx.conf /etc/nginx/sites-available/djangojenkin
chmod 710 /home/ubuntu/django-jenkins

sudo rm -rf /etc/nginx/sites-enabled/djangojenkin 

sudo ln -s /etc/nginx/sites-available/djangojenkin /etc/nginx/sites-enabled/
sudo systemctl restart nginx