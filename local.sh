#!/bin/bash
# Simple setup.sh for configuring Ubuntu 12.04 LTS EC2 instance
# for headless setup. 

git config --global user.name "Ruben Orta Magan"
git config --global user.email "ruben.orta@gmail.com"

cd $HOME
git clone http://github.com/rubenorta/bitstarter
cd bitstarter
heroku login
heroky keys:add
heroku apps:destroy rubenorta-bitstarter-s-mooc --confirm rubenorta-bitstarter-s-mooc
heroku apss:destroy rubenorta-bitstarter-mooc --confirm rubenorta-bitstarter-mooc
heroku apps:create rubenorta-bitstarter-s-mooc --remote staging-heroku
heroku apps:create rubenorta-bitstarter-mooc --remote production-heroku

# git push staging-heroku staging:master
# git push production-heroku master:master
