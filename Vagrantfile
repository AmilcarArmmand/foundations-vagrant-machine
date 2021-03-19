# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|
  config.vm.box = 'ubuntu/trusty64'
  config.vm.hostname = 'foundations-VM'

  if Vagrant.has_plugin?("vagrant-vbguest")
    config.vbguest.auto_update = false
  end

  config.vm.network "private_network", type: "dhcp"
  config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1",
                    auto_correct: true
  config.vm.usable_port_range = 8000..8999
  config.vm.network "forwarded_port", guest: 3306, host: 3306

  config.vm.synced_folder '.', '/vagrant', type: "nfs"

  config.vm.provider "virtualbox" do |vb|
    # Display GUI when booting
    vb.gui = true
    vb.memory = "1024"
  end

  config.vm.provision :shell, path: 'bootstrap.sh', keep_color: true
  config.vm.provision "file", source: "~/dotfiles/.aliases", destination: "~/.bash_aliases"
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "manifests"
    puppet.manifest_file = "default.pp"
  end
end
