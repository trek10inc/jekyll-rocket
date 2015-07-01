# Jekyll Rocket Quickstart Guide



## Setting up your Development Machine

We have streamlined the setup and configuration of a Jekyll development environment, all of the dependencies and configuration is offloaded to a virtual machine using Vagrant.

If you don't already have Vagrant, no problem! It's easy and free to get started.

You can checkout the full getting started guide here: [Getting Started with Vagrant Guide](https://docs.vagrantup.com/v2/getting-started/index.html)  

Alternatively, here's are the cliffnotes version.  

Download & Install VirtualBox Here
Download & Install Vagrant Here

Once you have Vagrant up and running, we can get started with the real work!

Clone this repository to your local machine. (Either with the GitHub app or via `git clone https://github.com/trek10inc/rocketplatform-jekyll` )

Navigate to that directory and run  
`vagrant up`

This may take quite a while (30 minutes or longer) to setup everything, especially if you need to download the vagrant base vm box (which you will need to on your first vagrant up). You will also notice that it will create a new "website" directory in your current directory.

Once everything is done ssh into your vagrant box  
`vagrant ssh`
*If this doesn't work and you are on windows, check out this [StackOverflow Thread](https://stackoverflow.com/questions/9885108/ssh-to-vagrant-box-in-windows).*


You will be greeted with some information from the Ubuntu system and a command line prompt.

To startup the Jekyll server just run  
`/jekyll/website/start_website.sh`

If everything works well you should be able to go to [http://localhost:4000](http://localhost:4000) in any browser on your local machine and see a fresh jekyll install! Congrats! You are well on your way to a rocket powered Jekyll website!


## Whenever you want to continue work on your website



## Setting up AWS 


## Setting up Wercker for One-Click Deploys & Builds

#### Still a Work in Progress

Todo:
- Creating a staging & production workflow.
- Using Environment Variables