#!/bin/bash

VM_IP="192.168.56.203"
VM_NAME="starteryy"
ANSIBLE_ROLES_PATH="provisioning\/provision\/roles\/"

cp __Vagrantfile            ../Vagrantfile
cp provision/__inventory    ../inventory
cp provision/__playbook.yml ../playbook.yml

# set VM IP
sed -i "s/@vm_ip@/${VM_IP}/g" ../Vagrantfile
sed -i "s/@vm_ip@/${VM_IP}/g" ../inventory

# set VM name
sed -i "s/@vm_name@/${VM_NAME}/g" ../Vagrantfile
sed -i "s/@vm_name@/${VM_NAME}/g" ../playbook.yml
sed -i "s/@vm_name@/${VM_NAME}/g" ../inventory

# set ansible roles path
sed -i "s/@ansible_roles_path@/${ANSIBLE_ROLES_PATH}/g" ../playbook.yml

echo "Vagrantfile created for this project"
echo "Ansible inventory created for this project"
echo "Ansible playbook created for this project"