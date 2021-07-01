#!/bin/bash

#give permission for everything in the express-app directory
sudo chmod -R 777 /home/ec2-user/test-option

#navigate into our working directory where we have all our github files
cd /home/ec2-user/test-option

#add npm and node to path
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # loads nvm bash_completion (node is in path now)

#install node modules
npm install

echo hello
ls

#start our node app in the background
# nohup node dist/bundle.js
npm run build:prod
cd node dist/bundle.js
echo finished