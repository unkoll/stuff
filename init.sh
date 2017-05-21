sudo ln -s /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/task.conf
sudo unlink /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo ln -s /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/task.conf
sudo /etc/init.d/gunicorn restart
