sudo ln -s /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/task.conf
sudo unlink /etc/nginx/sites-enabled/default
sudo service nginx restart
cd /home/box/web
sudo gunicorn -c /home/box/web/etc/gunicorn.conf hello:wsgi_application &
sudo gunicorn -c /home/box/web/etc/gunicorn-django.conf ask.wsgi:application &
