#!/bin/bash/ -x

#Setting Up linux as server

adduser akash

usermod -aG sudo akash

ufw app list

ufw allow OpenSSH

ufw enable

ufw status

#installing Nginx and configuring it

sudo apt install nginx

sudo ufw app list

sudo ufw allow 'Nginx HTTP' #Only port 80

sudo ufw status

systemctl status nginx

curl -4 3.811.65.15

sudo systemctl stop nginx #to start,stop, restart, reload, disable, enable

sudo mkdir -p /var/www/your_domain/html

sudo chown -R $USER:$USER /var/www/your_domain/html

sudo chmod -R 755 /var/www/your_domain

nano /var/www/your_domain/html/index.html

sudo nano /etc/nginx/sites-available/your_domain

sudo ln -s /etc/nginx/sites-available/your_domain /etc/nginx/sites-enabled/

sudo nano /etc/nginx/nginx.conf

sudo nginx -t

sudo systemctl restart nginx

# installing nodejs

cd ~

curl -sL https://deb.nodesource.com/setup_14.x -o nodesource_setup.sh

nano nodesource_setup.sh

sudo bash nodesource_setup.sh

sudo apt install nodejs

node -v

npm -v

sudo apt install build-essential

cd ~

nano hello.js

node hello.js

curl http://localhost:3000

sudo npm install pm2@latest -g

pm2 start hello.js

pm2 startup systemd

sudo env PATH=$PATH:/usr/bin /usr/lib/node_modules/pm2/bin/pm2 startup systemd -u akash --hp /home/akash

pm2 save

sudo systemctl start pm2-akash

systemctl status pm2-akash

pm2 stop 1480 #to stop, restart

pm2 list

pm2 info hello.js

pm2 monit

sudo nano /etc/nginx/sites-available/example.com

sudo nginx -t

sudo systemctl restart nginx




