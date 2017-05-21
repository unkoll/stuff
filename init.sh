sudo ln -s /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/task.conf
sudo unlink /etc/nginx/sites-enabled/default
sudo service nginx restart
cd /home/box/web
sudo gunicorn -b 0.0.0.0:8080 hello:app &
sudo gunicorn -c 0.0.0.0:8000 ask.ask.wsgi:app &
