# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  # box base on https://github.com/ties/my-opinionated-packer-vagrant-boxes
  # modified using local mirror and remove chef & ruby install.
  config.vm.box = "jessie64"

  config.vm.network "forwarded_port", guest: 3142, host: 3142 # port for apt-cacher-ng

  if false # set to true for virtualbox  need it for nfs 
      unless @justonce
        puts "create host network"
        config.vm.network "private_network", type: "dhcp" 
      end
      @justonce = true
  end

  config.vm.synced_folder ".", "/vagrant", type: "nfs", map_uid:'root', map_gid: 'wheel' 

  config.vm.provision :ansible do |ansible|
     ansible.playbook = "playbook.yml"
  end
end
