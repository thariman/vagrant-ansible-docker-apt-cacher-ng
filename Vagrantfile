# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.box = "jessie64"
  #config.vm.provider "vmware_fusion"
  config.vm.provider "virtualbox"
  config.vm.synced_folder ".", "/vagrant", type: "nfs", map_uid:'root', map_gid: 'wheel' 

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  config.vm.network "forwarded_port", guest: 3142, host: 3142 # port for apt-cacher NG status
  config.vm.network "private_network", type: "dhcp"
  #config.vm.network "public_network", bridge: "en7: USB 10/100/1000 LAN", ip: "192.168.1.3" 

  config.vm.provision :ansible do |ansible|
     ansible.playbook = "playbook.yml"
  end
end
