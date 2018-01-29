# starter-provision #

Project for provisioning all my projects. 

### What is this repository for? ###

It contains all ingredients for my projects, so I can easily launch development environment for doing stuff in java, ruby, node, or whatever ...
It's using 

* VirtualBox
* Vagrant
* Ansible

to create development machine.

### This project development ###

```
#!bash
sh do_init_for_this_project.sh
vagrant up
```

### Add to another project ###

```
#!bash
cd your_project
git submodule add git@bitbucket.org:mj83/starter-provision.git provisioning
cd provisioning
edit variables VM_IP and VM_NAME in do_init_for_new_project.sh
sh do_init_for_new_project.sh
cd ..

uncomment ingredients in provisioning/provision/playbook-project.yml suitable for your project
vagrant up

```

### Vagrant operations ###
```
#!bash
# lunch machine
vagrant up
# provision machine by ansible
vagrant provision
# stop machine
vagrant halt
# remove machine from virtualbox machines list
vagrant destroy
```

### Clone project with submodules ###

```
#!bash
git clone you_project_git
git submodule update --init --recursive

```

### How to refresh git submodules ###
```
#!bash
git pull --recurse-submodules
or
git submodule foreach git pull origin master
or
git submodule foreach --recursive git pull origin master
```