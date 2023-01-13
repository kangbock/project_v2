#! /bin/bash

sudo sed -i ':% s/20.249.92.238/20.214.219.101/g' project_v2/nodejs/main3.js
sudo sed -i ':% s/20.249.92.238/20.214.219.101/g' project_v2/nodejs/main.html
sudo sed -i ':% s/20.249.92.238/20.214.219.101/g' project_v2/nodejs/board.html
sudo sed -i ':% s/20.249.92.238/20.214.219.101/g' project_v2/nodejs/write.html
sudo sed -i ':% s/20.249.92.238/20.214.219.101/g' project_v2/nodejs/organization.html
sudo docker build -t kangbock/nodejs:0 project_v2/nodejs/.
sudo docker push kangbock/nodejs:0
