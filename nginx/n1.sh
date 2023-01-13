#! /bin/bash

sudo sed -i ':% s/node.kb97.xyz/www.kb97.xyz/g' project_v2/nginx/default.conf
sudo sed -i ':% s/20.214.161.190/www.kb97.xyz/g' project_v2/nginx/login.html
sudo sed -i ':% s/20.214.161.190/www.kb97.xyz/g' project_v2/nginx/logout.html
sudo sed -i ':% s/20.214.161.190/www.kb97.xyz/g' project_v2/nginx/register.html
sudo sed -i ':% s/20.214.161.190/www.kb97.xyz/g' project_v2/nodejs/board.html
sudo sed -i ':% s/20.214.161.190/www.kb97.xyz/g' project_v2/nodejs/main.html
sudo sed -i ':% s/20.214.161.190/www.kb97.xyz/g' project_v2/nodejs/main3.js
sudo sed -i ':% s/20.214.161.190/www.kb97.xyz/g' project_v2/nodejs/organization.html
sudo sed -i ':% s/20.214.161.190/www.kb97.xyz/g' project_v2/nodejs/write.html
