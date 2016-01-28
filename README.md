# starter-provision #

Project for provisioning all my projects. 

### What is this repository for? ###

It consists all ingredients for my projects, so I can easily lunch development environment for doing stuff in java, ruby, node, or whatever ...
It's using 

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
sh do_init_for_new_project.sh
cd ..
edit starter.vm.hostname in Vagrantfile
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