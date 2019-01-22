#!/bin/bash
curl -o bootstrap-salt.sh -L https://bootstrap.saltstack.com
sudo sh bootstrap-salt.sh
sudo apt install git-all
git clone https://github.com/plus3it/amazon-inspector-formula
sudo mkdir -p /srv/salt
sudo cp -r amazon-inspector-formula/amazon-inspector /srv/salt/
