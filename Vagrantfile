# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  # box base on https://github.com/ties/my-opinionated-packer-vagrant-boxes
  # modified using local mirror and remove chef & ruby install.
  config.vm.box = "jessie64"

  config.vm.network "forwarded_port", guest: 3142, host: 3142 # port for apt-cacher-ng

  if ARGV[1] and \
     (ARGV[1].split('=')[0] == "--provider" or ARGV[2])
     provider = (ARGV[1].split('=')[1] || ARGV[2])
  else
    provider = (ENV['VAGRANT_DEFAULT_PROVIDER'] || :virtualbox).to_sym
  end

  if provider == "virtualbox" # virtualbox required host-only network for nfs
    config.vm.network "private_network", type: "dhcp"
  end

  config.vm.synced_folder ".", "/vagrant", type: "nfs", map_uid:'root', map_gid: 'wheel' 

  config.vm.provision :ansible do |ansible|
     ansible.playbook = "playbook.yml"
  end
end
