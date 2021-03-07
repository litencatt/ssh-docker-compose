#!/bin/bash

useradd client

cd /home/client
mkdir .ssh

mv /tmp/id_*docker* .ssh/
chown client:client .ssh
chown client:client .ssh/*
