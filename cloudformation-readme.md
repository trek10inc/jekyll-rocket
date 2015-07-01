Some comments on the Cloudformation template included here
-----------------------------------------------------------

What is CloudFormation?
http://aws.amazon.com/cloudformation/

This template will create an S3 bucket to serve your Jekyll content, but actually much more as well. It also includes:

- An IAM user with the appropriate access to deploy your site to the S3 bucket
- A CloudFront distribution to cache your site on AWS's CDN for a configurable TTL. This CloudFront distribution also automatically redirects to https, which is recommended for SEO.
- AWS Route 53 DNS records for your site
- An extra (optional) redirect URL, which leverages Cloudfront and S3's special "redirect all" feature to all requests to http://my-redirect-url.com AND https://my-redirect-url.com to https://my-primary-url.com. We mainly use this to redirect zone apex (i.e. http://mysite.com) DNS to https://www.mysite.com, which is also recommended for SEO.

So, in short, this Cloudformation template completes everything you need to do in AWS to run your site in Jekyll. Well, almost...

There are two pieces of the setup we have left out. These pieces explain the two somewhat confusing parameters in our template "CloudfrontSSLID" and "HostedZoneID":

1) Cannot be done in CloudFormation... upload an SSL certificate

You need to upload your SSL certificate to AWS for use in CloudFront and then put the resulting ID in the CloudFormation parameter "CloudfrontSSLID". The gory details in AWS's official documentation are here:
http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/SecureConnections.html
(If you've uploaded a certificate to AWS before, for an ELB, note that the difference with CloudFront is that you must use the CLI and specify --path /cloudfront/mypath for it to be usable.)

Make note of the ID CloudFront returns, something like "AS1A2M3P4L5E67SIIXR3J". This should be put into the CloudFormation parameter.

One other important note that unless you want to pay $600/mo for a dedicated SSL certificate, CloudFront SSL uses SNI. SNI is supported by the vast, vast majority of browsers, but it is not universal. Read here:
http://en.wikipedia.org/wiki/Server_Name_Indication

Or for a more detailed walkthrough:
https://bryce.fisher-fleig.org/blog/setting-up-ssl-on-aws-cloudfront-and-s3/

2) Is better done outside of CloudFormation... create your "Hosted Zone" in Route 53 & configure your domain to use Route 53 DNS

Route 53 is AWS's DNS service. A "hosted zone" in Route 53 is a domain, inside a hosted zone are record sets, such as www.mydomain.com or mail.mydomain.com. While you can create a hosted zone with CloudFormation, we think that's not the best idea... it's easier to manage that zone outside of your CloudFormation template, as you might want to have multiple Jekyll sites, not to mention plenty of other sites outside of Jekyll altogether, in your domain.

Check out the AWS documentation for getting started with Route 53:
http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/getting-started.html

Once you have moved your DNS to Route 53, you can now use our CloudFormation template. Simply select the hosted zone in which you want your records created, and look at the properties pane on the right. You will see a hosted zone ID. Use that ID in the Cloudformation parameter, and Cloudformation will create your new DNS entries and point them to the rest of your Jekyll infrastructure.