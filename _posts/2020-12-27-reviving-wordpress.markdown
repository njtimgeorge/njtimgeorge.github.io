---
layout: post
title:  "Converting a Wordpress.com Blog to Jekyll"
date:   2020-12-27
categories: jekyll blog blogging wordpress
---

My venerable old blog, https://byzantinegeek.wordpress.com/ still exists. How 
difficult would it be to convert and put in a public AWS bucket?

# Using Jekyll Without Github Pages

OK, if I'm going to duplicate my Wordpress site, I should have a way to
verify it without overwriting my github pages blog. Fortunately, we can serve
the site using Jekyll running in a docker container. My script: run.sh
contains the following command:

`docker run --rm -it --volume="$PWD:/srv/jekyll"  --env JEKYLL_ENV=production -p 4000:4000 jekyll/jekyll:3.8 jekyll serve`

This builds a site and allows you to validate the site by connecting with 
a local browser (to port 4000), before deploying it.

I liked the look of the [Memoirs Jekyll theme](http://jekyllthemes.org/themes/memoirs-jekyll-theme/). 
I cloned it onto my local machine and ran the command above. Now I have a site 
that looks like the documentation for the theme. Now all I need is the content 
from my Wordpress.com site.

# Export Posts from Wordpress

The link to export from Wordpress.com is [described in detail here](https://import.jekyllrb.com/docs/wordpressdotcom/). It is: 

`https://YOUR-USER-NAME.wordpress.com/wp-admin/export.php`

Of course, substitute in your user name for "YOUR-USER-NAME", but you already 
knew that, didn't you? This will give you a file with a name like:

`byzantinegeek.wordpress.2020-12-18.001.xml`

Great, now you need to get the content, including images, in jekyll format.

# Processing Posts and Getting Images

Once again, I used a docker container with the appropriate environment to do the
processing. This time, I interacted with the container and typed in 
commands directly. I got a lot of these details from 
[this post](https://www.deadlyfingers.net/code/migrating-from-wordpress-to-github-pages). 
The author of that post uses a local version of Ruby instead of Ruby in 
a docker container.

So, first we start up a container with Ruby:

`$ docker run --rm -it --network="host" -v 'pwd'/ruby-output:/ruby-output -v 'pwd'/export:/export ruby bash`

This started a container and mounted the local directories 
./export and ./ruby-output. 

I had to install several Ruby gems in the container first:

`# gem install jekyll-import sequel unidecode htmlentities mysql2`
`# gem install hpricot`
`# gem install open_uri_redirections`

And finally, ask Ruby to do the import:

`ruby -r rubygems -e 'require "jekyll-import";`
`JekyllImport::Importers::WordpressDotCom.run({`
`"source" => "/export/wordpress.xml",`
`"no_fetch_images" => false,`
`"assets_folder" => "assets"`
`})'`

When you exit out of the docker container, you see a Jekyll site in 
./ruby-output.

All you have to do is copy over the contents of "assets" and "_posts" to your 
directory with the theme. In theory.

The reality is that there will be mismatches. I copied the content and realized
that there were several problems:
1. Jekyll site still using titles and information from the theme that I cloned.
1. Author did not show up for the posts that I imported. Instead it said "posted by <blank>".
1. There were links pointing back to Wordpress.com. 

All in all, the importer did a good job but couldn't optimize for every theme.
Some of my problems were caused by the expectations of the theme. I had to 
dig in and do some manual editing. Still, in a couple of hours, I had a site 
that looked good when I used run.sh locally (the script described above).

# Create a Bucket and Copy the Site

So, we follow the process described 
[in this previous post]({% post_url 2020-12-27-s3-site %})). The new bucket will
be byzantinegeek-blog-photoblog.

`$ aws s3 cp --recursive . s3://byzantinegeek-blog-photoblog/`

[Check it out.](http://byzantinegeek-blog-photoblog.s3-website-us-east-1.amazonaws.com/)