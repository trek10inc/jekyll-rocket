Jekyll Rocket
----------


![Jekyll Rocket](jekyll_rocket_header.jpg?raw=true)

A quickstart for building and deploying high performance static websites with Jekyll.  

## Why you should use Jekyll Rocket

We built this set of practices for high performance static websites, and we use it ourselves. We think you should too. It's fast to get started, and you'll deliver stellar performing websites that are pretty darn easy to maintain thanks to Jekyll.  
  
At Trek10, we wanted to upgrade from an overpowered, under utilized and somewhat sluggish Drupal installation. All we needed was a website that was easy to maintain. We also wanted something that showed off the power of Amazon Web Services since that's our thing.  
  
- Easy to Get Started (Batteries Included)
- Complete Setup Instructions
- Delivers Blazing Fast Websites
- Affordable
- Maintainable
- [Getting Started Screencast](https://youtu.be/IcF3XCxpgtw) (https://youtu.be/IcF3XCxpgtw)

NOTE: _We do recommend that you or your developers have some familiarity with the command line, but you don't gotta be a sysops with a decade of expereince. (Okay... you really just need to be able to copy paste.) Mostly just know how to open your terminal or cmd prompt._  

### Cost Analysis

Running even a tiny traditional CMS like Wordpress or Drupal will cost at least $20/mo in AWS. And that gives you almost no resources... any reasonable traffic will quickly max it out. It will also give you no redundancy. When you starting adding all of that together, you can easily spend $50/mo, $100/mo, or more running a scalable and highly available CMS infrastructure. Not to mention the setup time... if you're not an AWS expert, that could take you days or weeks to set up correctly.

This Jekyll rocket platform is:
- Turnkey to set up: Just run the Cloudformation template and it's built
- Highly available out of the box: CloudFront is as highly available as it gets. There are something like 50 CloudFront regions.
- Massively scalable: With no effort, you get essentially unlimited scalability. Really.
- Costs pennies. Well, maybe dollars if you're hugely successful. Let's say your app had 1M page views/mo. Yes, 1M. Assume that each page view makes 15 HTTP requests, and that the whole page is 50k. With CloudFront, you'd pay for 50GB of transfer and 15M requests. That would cost about $15/mo for the US, a bit more in other countries. As long as your caching is reasonable, the S3 costs would be trivial because CloudFront would rarely have to request new files.

So just to review, that's $15/mo to serve up 1M page views per month on a massively scalable and highly available system.

### Batteries Included

We spent a lot of time thinking, expirementing, and making things as straight forward as possible. Read through the quickstart guide, and check out the screencast.
  
You just have to plug in a few configurations here and there (Don't worry, we even tell you where to get the values for the configs), and away you go.

We even baked in the concept of staging and production websites. Now you can finally work with your team and easily preview work without screwing up your actual site or sending pictures back and forth in email.


### Technolgoies Used

- Development
  - Vagrant
  - Jekyll
  - Various Jekyll Plugins
- Deployment
  - Amazon Web Services (AWS)
    - S3
    - Cloudfront

### Built on the Shoulders of Kind Giants  

We couldn't have put together this little repository without help from these kickass people and groups:  
  
- Jekyll
- Jekyll Compression
- Jekyll Asset Pipeline
- Bootstrap
  
## Why you shouldn't use Jekyll Rocket
  
You or your developers are not comfortable working with HTML, CSS (or SASS/LESS) and learning some simple logic. (Protip: If your developers aren't comfortable with this or with learning... we suggest you find some new ones before embarking on whatever project it is that brought you to this page.)  
  
You want a full blown content management system with all the bells and whistles. Something that you or your boss can log into a backend and tweak colors and text to your hearts content. Jekyll is not wordpress. If you want crazy fast WordPress, head on over to the awesome folks at WPEngine (This is not a paid plug, they just have stellar service and product).  
  
You don't want a blazing fast website that breaks sound barriers. We get it, you want that classic 1990's 56K modem feel. That's just not something we specialize in right now.  

## QuickStart Guide

Checkout the [QuickStart Guide to get yourself](../master/quickstart_guide.md) up and running in minutes.

## Need Help?

[Create a New GitHub issue](https://github.com/trek10inc/jekyll-rocket/issues/new)

## TODO (aka: We should do this, but wouldn't complain if someone else did)


- Good Image Optmization / Sane Default Configs
- Easy Theme Selector


## Contributing

We are pretty lax about the guidelines.  
  
If you have a good idea, or want to implementing something yourself, we are pretty open to it.
We only ask that your idea is in the interest of making this project produce a better end result, easier to use, or easier to mantain.  
  
We are open to constructive criticism, and expect that anyone contributing would be as well. It's only together that we can make this better.

