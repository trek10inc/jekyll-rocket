# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "ffuenf/ubuntu-14.04.2-server-amd64"
  config.vm.synced_folder ".", "/vagrant/website", :mount_options => ['dmode=774','fmode=775']
  config.vm.network "forwarded_port", guest: 4000, host: 4000


  config.vm.provision "shell", inline: <<-SHELL
    echo "Updating ubuntu..."
    sudo apt-get update
    
    echo "\n\nInstalling all the boring stuff..."
    sudo apt-get -y install build-essential git nodejs ruby1.9.3 default-jre
    gem install bundler
    chown vagrant:vagrant /vagrant
    cd /vagrant/website
    bundle install

    echo "\n\nCreating your new jekyll rocket website..."
    jekyll new rocketpack-jekyll

    echo "\n\nBuilding the rocket engines and strapping them onto your new site..."

  SHELL

end
