#!/bin/bash

if [[ "$EUID" -ne 0  ]]
then
	echo "Please run as root";
	exit 0;
fi

apt install -y apt-transport-https ca-certificates curl software-properties-common;
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -;
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt install -y docker-ce;
apt install -y docker-compose;

usermod -aG docker ubuntu;
service docker restart;

