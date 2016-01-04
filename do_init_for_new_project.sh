#!/bin/bash

cp ./Vagrantfile__new_project ../Vagrantfile
cp provision/inventory-this     provision/inventory-project
cp provision/playbook-this.yml  provision/playbook-project.yml
echo "Vagrantfile created for this project"
echo "Ansible inventory created for this project"
echo "Ansible playbook  created for this project"