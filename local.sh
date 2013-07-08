#!/bin/bash
# Simple setup.sh for configuring Ubuntu 12.04 LTS EC2 instance
# for headless setup. 

git config --global user.name "Ruben Orta Magan"
git config --global user.email "ruben.orta@gmail.com"

cd $HOME
git clone http://github.com/rubenorta/bitstarter
cd bitstarter
