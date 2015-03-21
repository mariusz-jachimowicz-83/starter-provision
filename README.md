Installing ansible
On Ubuntu 14.04 (version 1.7):
sudo apt-get install ansible/trusty-backports
On Ubuntu 12.04 (version 1.6):
sudo apt-get install software-properties-common
sudo apt-add-repository ppa:rquillo/ansible
sudo apt-get update
sudo apt-get install ansible
Installing playbook requirements
ansible-galaxy install Stouts.elasticsearch
ansible-galaxy install Stouts.supervisor
ansible-galaxy install debops.nginx
Running playbook
Run (with debug):
ansible-playbook -vvvv tmsearch.yml -i production
Run (without debug):
ansible-playbook tmsearch.yml -i production