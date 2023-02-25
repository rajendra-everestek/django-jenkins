# sudo systemctl start gunicorn.socket
# sudo systemctl enable gunicorn.socket

sudo apt install nginx -y 

sudo cp -rf /var/lib/jenkins/workspace/Django-Admin/nginx/nginx.conf /etc/nginx/sites-available/Django-Admin
chmod 710 /var/lib/jenkins/workspace/Django-Admin

sudo ln -s /etc/nginx/sites-available/Django-Admin /etc/nginx/sites-enabled/
sudo systemctl restart nginx