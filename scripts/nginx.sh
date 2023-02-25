# sudo systemctl start gunicorn.socket
# sudo systemctl enable gunicorn.socket

sudo apt install nginx -y 

sudo cp -rf /home/ubuntu/django-jenkins/nginx/nginx.conf /etc/nginx/sites-available/Django-Admin
chmod 710 /home/ubuntu/django-jenkins

sudo ln -s /etc/nginx/sites-available/Django-Admin /etc/nginx/sites-enabled/
sudo systemctl restart nginx