---
layout: post
title:  "Yet Another Blog! This time with CI/CD"
date:   2021-02-27
categories: Azure Blog
---

As part of my studies in Azure, I decided to create a blog with a 
CI/CD pipeline.

[Check it out.](http://www.mypersonalfi.com/)

I stuck with Jekyll for blogging because it is straightforward. I went
through the process of registering a new domain (you need to go through 
a third party, unlike AWS) and setting up a CI/CD pipeline.

[Gunnar Peipman has a nice set of blog posts detailing the process.](https://gunnarpeipman.com/jekyll-azure-devops-static-blog/)

The end result of this process is that I have a private repo in github for 
this blog. Azure uses webhooks to detect commits, and there is a CI/CD 
process that starts up a linux instance to create a fresh copy of the website.

This is straightforward an Azure makes it fairly simple to do most of this
through the console. I'm grateful for Gunnar's YAML script to actually build
the jekyll site. 

I didn't set this up in the CDN as suggested because this is more of an 
experiment at this time. If the blog takes on a life of its own, I'll 
revisit that.

# Observations from this process

- Both Azure and AWS make it relatively easy to stand up a static website.
- Azure has a good integration between Storage Accounts (roughly equivalent to an AWS bucket) and the CDN.
- Azure is much more likely to be prompting you for support policy on individual resources as you go along. It feels like you are making billing decisions at every moment.
- Azure has good integration of Bash, Powershell, and the Azure CLI throughout
the toolset, even from the console.
- Azure and AWS have effective billing dashboards to ensure your learning exercises won't incur excessive charges. If you monitor them.
- I appreciate the initial $200 credit on the Azure free tier account. It helps to experiment with many features.