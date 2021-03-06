#!/bin/bash
. /usr/local/bin/set-env.bash
git config --global user.email "testy@example.com"
git config --global user.name "Testy McTesterson"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm install --lts
nvm use --default --lts
nvm alias default node
echo 'done' >> /tmp/nvm-installed.sh
npm i -g yarn gatsby-cli
echo 'done' >> /tmp/gatsby-installed.sh
echo 'done' >> /tmp/launch.sh
sleep 1
