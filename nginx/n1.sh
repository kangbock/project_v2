#! /bin/bash

sudo sed -i '% s/www.kb97.xyz:3000/node.kb97.xyz:3000/g' project/nginx/default.conf
sudo sed -i '% s/20.249.92.238/20.214.219.101/g' project/nginx/login.html
sudo sed -i '% s/20.249.92.238/20.214.219.101/g' project/nginx/logout.html
sudo sed -i '% s/20.249.92.238/20.214.219.101/g' project/nginx/register.html
sudo sed -i '% s/20.249.92.238/20.214.219.101/g' project/nodejs/board.html
sudo sed -i '% s/20.249.92.238/20.214.219.101/g' project/nodejs/main.html
sudo sed -i '% s/20.249.92.238/20.214.219.101/g' project/nodejs/main3.js
sudo sed -i '% s/20.249.92.238/20.214.219.101/g' project/nodejs/organization.html
sudo sed -i '% s/20.249.92.238/20.214.219.101/g' project/nodejs/write.html