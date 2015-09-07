# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.box = "jessie64"

  config.vm.network "forwarded_port", guest: 3142, host: 3142 # port for apt-cacher-ng

  config.vm.provider :virtualbox do |vbox|
     config.vm.network "private_network", type: "dhcp" # require for nfs synced folder under virtualbox
  end

  config.vm.synced_folder ".", "/vagrant", type: "nfs", map_uid:'root', map_gid: 'wheel' 

  config.vm.provision :ansible do |ansible|
     ansible.playbook = "playbook.yml"
  end
end
