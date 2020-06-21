#Created a symbolic test.conf reference that references nginx.conf
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
#Delete dirrectory
sudo rm -rf /etc/nginx/sites-enabled/default
#Restart nginx
sudo /etc/init.d/nginx restart

#***Create gunicorn configuration***

sudo ln -sf /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/test
#Restart Gunicorn
sudo /etc/init.d/gunicorn restart