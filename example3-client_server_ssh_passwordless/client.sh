#!/bin/bash

yum install epel-release -y
yum install sshpass -y
runuser -l vagrant -c "ssh-keygen -t rsa -N '' -f ~/.ssh/id_rsa"
runuser -l vagrant -c "sshpass -p 'vagrant' ssh-copy-id -o StrictHostKeyChecking=no -i ~/.ssh/id_rsa.pub vagrant@192.168.10.21"
whoami