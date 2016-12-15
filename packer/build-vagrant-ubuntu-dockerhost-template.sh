#!/bin/bash
sleep 15

# Set up insecure key (standard Vagrant practice)
sudo mkdir ~vagrant/.ssh
sudo chmod 700 ~vagrant/.ssh
sudo wget --no-check-certificate 'https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub' -O ~vagrant/.ssh/authorized_keys
sudo chmod 600 ~vagrant/.ssh/authorized_keys
sudo chown -R vagrant:vagrant ~vagrant/.ssh

sudo apt-get update -y -qq
sudo apt-get install -y -q virtualbox-guest-dkms
sudo apt-get install -y -q virtualbox-guest-utils

sudo apt-get install -y apt-transport-https ca-certificates nfs-common
sleep 5
#sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo 'deb https://apt.dockerproject.org/repo ubuntu-xenial main' | sudo tee /etc/apt/sources.list.d/docker.list
sudo apt-get update
sudo apt-get install -y docker-engine
sudo usermod -aG docker ubuntu
sudo apt-get install -y watch

ls -halt /etc/sudoers.d
sudo cat /etc/sudoers.d/vagrant
echo -----------------------
ls -halt ~/.ssh
sudo cat ~/.ssh/authorized_keys

