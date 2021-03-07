#!/bin/bash

useradd testuser

cd /home/testuser
mkdir .ssh
touch .ssh/authorized_keys
chmod 700 .ssh
chmod 600 .ssh/authorized_keys
chown testuser:testuser .ssh
chown testuser:testuser .ssh/*

cat /tmp/id_rsa_docker.pub >> .ssh/authorized_keys
