#!/bin/bash/ -x

sudo apt-get update

sudo apt update

sudo apt-get upgrade

sudo apt-get upgrade

apt install nodejs

node -v

apt install npm

npm -v

sudo apt install build-essentials

pwd

ls

mkdir Webapp_deployment

cd Webapp_deployment/

git clone https://github.com/BL-AniketChile/NodeJs-API

cd NodeJs-API/

vim helloworld.js

node helloworld.js

curl localhost:3000

ufw allow 3000

node helloworld.js &

sudo npm install pm2@latest -g

pm2

pm2 list

pm2 examples

pm2 start helloworld.js --name akash

pm2 ls

pm2 startup systemd

pm2 save

pm2 info akash

sudo apt install apache2

sudo a2dissite 000-default

sudo a2enmod proxy proxy_http rewrite headers expires

sudo service apache2 restart

vim hello-world.conf

sudo a2ensite hello-world.conf

sudo service apache2 restart

sudo nano /etc/apache2/sites-available/hello-world.conf

pm2 restart akash

curl localhost:3000

sudo service apache2 restart
