#!/bin/bash

#give permission for everything in the express-app directory
sudo chmod -R 777 /home/ec2-user/test-option

echo hello
ls

#start our node app in the background
nohup node dist/bundle.js
echo finished