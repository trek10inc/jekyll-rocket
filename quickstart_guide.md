# Jekyll Rocket Quickstart Guide


<p align="center">
    <a href="https://youtu.be/IcF3XCxpgtw" alt="Jekyll Rocket Screencast">
        <img src="screencast_thumbnail.png?raw=true" />
    </a>
</p>

If you are a visual learner, [check out the Getting Started Screencast](https://youtu.be/IcF3XCxpgtw) (https://youtu.be/IcF3XCxpgtw)! 

## Setting up your Development Machine

We have streamlined the setup and configuration of a Jekyll development environment, all of the dependencies and configuration is offloaded to a virtual machine using Vagrant.

If you don't already have Vagrant, no problem! It's easy and free to get started.

You can checkout the full getting started guide here: [Getting Started with Vagrant Guide](https://docs.vagrantup.com/v2/getting-started/index.html)  

Alternatively, here's are the cliffnotes version.  

[Download & Install VirtualBox Here](https://www.virtualbox.org/wiki/Downloads)  
[Download & Install Vagrant Here](https://www.vagrantup.com/downloads.html)

Once you have Vagrant up and running, we can get started with the real work!

Clone this repository to your local machine. (Either with the GitHub app or via `git clone https://github.com/trek10inc/jekyll-rocket` )

Navigate to that directory and run  
`vagrant up`

This may take quite a while (30 minutes or longer) to setup everything, especially if you need to download the vagrant base vm box (which you will need to on your first vagrant up). You will also notice that it will create a new "website" directory in your current directory.

Once everything is done ssh into your vagrant box  
`vagrant ssh`  
*If this doesn't work and you are on windows, check out this [StackOverflow Thread](https://stackoverflow.com/questions/9885108/ssh-to-vagrant-box-in-windows).*


You will be greeted with some information from the Ubuntu system and a command line prompt.

To startup the Jekyll server just run in your terminal  
`develop-website`

If everything works well you should be able to go to [http://localhost:4000](http://localhost:4000) in any browser on your local machine and see a fresh jekyll install! Congrats! You are well on your way to a rocket powered Jekyll website!

To stop the server (if you need to restart it, or you are done working) use CTRL+C

## Whenever you want to continue work on your website

Just go to the directory with the vagrant file and repeat the steps:

```
vagrant up
vagrant ssh
develop-website
```

## Setting up AWS 

The easiest way to set things up in AWS to to use the provided CloudFormation template.
Check out [CloudFormation ReadMe](../master/cloudformation-readme.md).

## Deployments

Deploying can be done straight from the vagrant machine. We have included support for the brilliant s3_website, which handles many things like only updating changed / new files, managing cloudfront distributions, and even handling redirects.

The config file can be found in the website/s3_website.yml of your generated site.
You will need to edit a few different things, mostly to add your AWS secrets and keys. The config file is fairly self explanatory.

After all of that is set, you simply need to run:
`deploy-website`


## That's all folks

That's all there is, a few sets of commands and you are off and running with a Jekyll & S3 powered static website with minimal running cost and crazy high availability and practically infinite scaling.
