#!/bin/bash

sudo apt update 
wget https://releases.hashicorp.com/terraform/1.1.5/terraform_1.1.5_linux_amd64.zip
sudo apt install unzip -y
unzip terraform_1.1.5_linux_amd64.zip
sudo mv terraform /usr/local/bin/