dir = Dir.pwd
vagrant_dir = File.expand_path(File.dirname(__FILE__))

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "clean__ubuntu-12.04.4-desktop-amd64"

  
  # Share folders
  #config.vm.synced_folder "/home/cichy/development_for_vagrant", "/home/vagrant/development"

  
  # Set the hostname
  #config.vm.hostname = "blimp-dev"

  # Enable X11 forwarding
  config.ssh.forward_x11 = true

  #config.vm.network "forwarded_port", guest: 3000, host: 3000
  #config.vm.network "forwarded_port", guest: 9200, host: 9200
  #config.vm.network "forwarded_port", guest: 5432, host: 5432
  #config.vm.network :forwarded_port, guest: 8080, host: 4880
  #config.vm.network :forwarded_port, guest: 8000, host: 4800
  #config.vm.network :forwarded_port, guest: 1099, host: 1099

  #config.vm.network :hostonly, "192.168.56.200", :netmask => "255.255.255.0"
  #config.vm.network :private_network, ip: "192.168.56.200"

  # VirtualBox provider configuration.
  config.vm.provider :virtualbox do |vb|
    # Set to true if you want the virtualbox to start the VM's UI
    vb.gui = true
    vb.customize ["modifyvm", :id, "--memory", "2048"]
    vb.customize ['modifyvm', :id, '--hostonlyadapter2', 'vboxnet0']
  end

  config.vm.define :starter do |starter|
    starter.vm.network :private_network, ip: "192.168.56.200"
    starter.vm.hostname = "starter-dev"  
  end

  config.vm.provision :ansible do |ansible|
    ansible.playbook       = "provision/playbook.yml"
    ansible.inventory_path = "provision/inventory"
    ansible.sudo           = true
  end

end
