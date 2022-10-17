#!/bin/bash
set -e

# install git
sudo apt-get install git -all -y

# clone api server repo from github
git clone https://github.com/Arvind644/movies_api

# adding curl commands
sudo apt-get install curl
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash - &&\

# npm install 
sudo apt-get install nodejs -y

# run api server
cd movies_api && npm install && sudo npm install pm2 -g && pm2 start server.js 

