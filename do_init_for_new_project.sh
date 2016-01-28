#!/bin/bash

cp ./Vagrantfile__new_project          ../Vagrantfile
cp provision/inventory-this            ../inventory
cp provision/playbook-new-project.yml  ../playbook.yml
echo "Vagrantfile created for this project"
echo "Ansible inventory created for this project"
echo "Ansible playbook  created for this project"