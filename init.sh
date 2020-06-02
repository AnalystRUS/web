#Created a symbolic test.conf reference that references nginx.conf
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
#Delete dirrectory
sudo rm -rf /etc/nginx/sites-enabled/default
#Restart nginx
sudo /etc/init.d/nginx restart