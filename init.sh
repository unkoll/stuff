sudo ln -s /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/task.conf
sudo unlink /etc/nginx/sites-enabled/default
echo 'Reference nginx : complete'
echo 'Restartinh nginx...'
sudo /etc/init.d/nginx restart
sudo gunicorn -b 0.0.0.0:8080 hello:app
echo 'Restarting gunicorn...'
sudo /etc/init.d/gunicorn restart
