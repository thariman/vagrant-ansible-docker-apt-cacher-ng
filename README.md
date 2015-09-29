# vagrant-ansible-docker-apt-cacher-ng

Create apt-cacher-ng in a Debian VM on an OS X using:

  1. vagrant
  2. ansible
  3. docker
  4. virtualbox or vmware_fusion

Have a persistent cache directory ( able to keep the repo cache across vagrant destroy )

to run:

git clone https://github.com/thariman/vagrant-ansible-docker-apt-cacher-ng.git

cd vagrant-ansible-docker-apt-cacher-ng

vagrant up --provider vmware_fusion or virtualbox
