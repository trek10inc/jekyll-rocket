# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "ubuntu/trusty64"
  config.vm.synced_folder ".", "/jekyll", :mount_options => ['dmode=774','fmode=775']
  config.vm.network "forwarded_port", guest: 4000, host: 4000


  config.vm.provision "shell", inline: <<-SHELL
    echo "Updating ubuntu..."
    sudo apt-get update
    
    echo "\n\nInstalling all the boring stuff..."
    sudo apt-get -y install build-essential git nodejs ruby1.9.3 default-jre
    gem install bundler
    gem install s3_website
    chown vagrant:vagrant /jekyll
    cd /jekyll
    bundle install

    if [ -d website ]; then
      echo "\n\nExisting jekyll website detected, not creating a new one..."
    else
      echo "\n\nCreating a new jekyll website..."
      jekyll new website
    fi
    
    echo "\n\nBuilding the rocket engines and strapping them onto your new site..."
    cd /jekyll/website
    rm -rf css _sass --verbose
    cp -rf /jekyll/rocketpack-configs/* . --verbose
    sudo cp /jekyll/rocketpack-configs/deploy-website.sh /usr/bin/deploy-website
    sudo cp /jekyll/rocketpack-configs/develop-website.sh /usr/bin/develop-website
  SHELL

end
