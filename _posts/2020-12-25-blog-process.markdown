---
layout: post
title:  "Blogging to Github Pages"
date:   2020-12-25
categories: jekyll blog blogging
---

The frustrating thing about starting a blog, any blog, is that you usually
have some ideas and you just want to start posting. Instead,
you find yourself setting up and configuring your blogging environment 
rather than generating content. 

This is not a complaint against blogging software. It's gotten easier over
the years, and you still have an amazing selection of styles and themes. 

This is how I'm currently managing this blog.

# The Tools
## Git
[git](https://git-scm.com/) "is a free and open source distributed version control system designed to handle everything from small to very large projects with speed and efficiency."

If you're a software engineering and you haven't taken the time to learn git
yet, you should take the time. It's necessary in the open source world, and also
a useful skill. 

Since this blog is hosted by github, I need to use git to commit the posts.

## Github

If you're not currently using github, it's a good idea to sign up anyway. In
the past, I've used it to host little toy projects and learning projects 
for whatever training I've been doing. They have great [documentation here](https://guides.github.com/activities/hello-world/).
 
Now it is the home of this blog. 

## Github pages

[github pages](https://pages.github.com/) is a great way to create and maintain 
a blog. You create a project in github with the name <em>username</em>.github.io. 
For example, this blog is https://njtimgeorge.github.io/.

## Jekyll

[jekyll](https://jekyllrb.com/) is the engine for creating static websites. Unlike
other blogging engines, it doesn't require a database or a server-side scripting engine.

## Markdown

[Markdown](https://www.markdownguide.org/basic-syntax/) is an emerging 
standard for documentation and comments. It's lighter weight and more 
readable than HTML. All of my blog posts are written in markdown.

## Visual Studio Code

In the past, I've used [Visual Studio Code](https://code.visualstudio.com/) 
(AKA VSCode) for programming in golang. It's definitely my 
favorite minimalist IDE. It has just enough functionality 
to get the job done while not overwhelming you
with too many bells and whistles (I'm looking at you Eclipse...).

Visual Studio Code is a good markdown editor with syntax highlighting and
it also has a preview capability for that markdown. The integration with 
git means that you don't have to drop down to the command line too
often unless you like doing that. Not that there's anything wrong with that.

# The Process
## Setup

Detailed instructions are available in the 
[github pages](https://pages.github.com/) documentation.

I made some mistakes setting up my blog. I tried to run jekyll on my local
system first without going through any research into setup. I also picked
a theme that I liked without looking at compatibility and tried to make it 
work. It wasn't being actively maintained and had some problems with the 
current version of jekyll.

To start out your blog, pick a theme that you can fork or clone (you
took my advice and read up on git, didn't you?), and that you know
to be compatible with github pages.

There's a [list of compatible themes here.](https://pages.github.com/themes/).

Fork one of those themes into a new project named <em>username</em>.github.io. In
a few minutes, your blog will be generated at 
https://<em>username</em>.github.io/. And it will look identical to the blog
page for the theme that you've chosen. 

Compatible themes have instructions in the github repository for that particular 
theme. Follow them to customize the theme for yourself.

## Posting

To create a post:
1. Think of all the things you want to post. When you sit down, you probably
have content for 3-4 posts floating in your brain.
5. Pick the topic for the current post.
7. For you own sanity, open a github issue for all remaining issues in your
head. Put some details into the issue. This is not solely so that you don't
forget. This helps to clear your head of the details of the future post
so that you can concentrate on the current post. It also gives you a place
to make notes when you get further ideas.
9. For the first couple of posts, re-read the documentation of the theme to 
remember the recommended format for posts in that theme.
11. Write your post.
13. Assuming that you're using VSCode, preview your post. You can right-click
on the file in explorer and select "Preview".
15. Once you've proof-read and adjusted it, add it, commit it, and push it. 
19. Get a cup of tea and when you get back look at your blog for the post.