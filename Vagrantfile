# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "foundationsVM.example"

#  if Vagrant.has_plugin?("vagrant-vbguest")
#    config.vbguest.auto_update = false
#  end

# config.vm.network "public_network"
  config.vm.network "private_network", ip: "192.168.33.10"
# config.vm.network "forwarded_port", guest: 80, host: 8080, auto_correct: true
  config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1", auto_correct: true
  config.vm.usable_port_range = 8000..8999
  config.vm.network "forwarded_port", guest: 3306, host: 3306
  config.vm.network "forwarded_port", guest: 5000, host: 5000
  config.vm.network "forwarded_port", guest: 5001, host: 5001
  config.vm.network "private_network", type: "dhcp"

  config.vm.synced_folder '.', '/vagrant', type: "nfs"
# config.vm.synced_folder '../sandbox/', '/home/vagrant/sandbox/', type: "nfs"
# SharedFoldersEnableSymlinksCreate: false
  config.vm.provider "virtualbox" do |vb|
    # Display GUI when booting
    vb.gui = true
    vb.memory = 2048
    vb.cpus = 2
  end

  config.vm.provision :shell, path: 'bootstrap.sh', keep_color: true
  config.vm.provision "file", source: ".aliases", destination: "~/.bash_aliases"
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "manifests"
    puppet.manifest_file = "default.pp"
  end
end
