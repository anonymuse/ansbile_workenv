# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|

  # Create an Ansible Manager Node
  config.vm.define :mgmt do |mgmt_config|
    mgmt_config.vm.box = "chef/centos-6.5"
    mgmt_config.vm.hostname = "manager"
    mgmt_config.vm.network :private_network, ip: "10.0.20.10"
    mgmt_config.vm.provider "virtualbox" do |vb|
      vb.memory = "256"
    end
    mgmt_config.vm.provision :shell, path: "bootstrap-manager.sh"
  end

  # Create Nodes
  (1..3).each do |i|
    config.vm.define "node0#{i}" do |node|
      node.vm.box = "chef/centos-6.5"
      node.vm.hostname  = "web0{i}"
      node.vm.network :private_network, ip: "10.0.20.2#{i}"
      node.vm.network "forwarded_port", guest: 80, host:"808#{i}"
      node.vm.provider "virtualbox" do |vb|
        vb.memory = "256"
      end
    end
  end

end
