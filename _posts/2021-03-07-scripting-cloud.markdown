---
layout: post
title:  "Scripting with Cloud Providers"
date:   2021-03-07
categories: Career Architect Developer Scripting Powershell Azure AWS CLI
---

Some parts of the job are just more fun than others. To an outsider, the
good and the bad parts might look identical but at the end of the day we
all have a feel for pleasant tasks as opposed to work.

As an example, most people really hate office politics. On the other hand, they
really enjoy collaboration: working with somebody they respect to solve a
common problem. To an outsider, these could look like identical interactions.
At the end of the day, everyone has an opinion of which interactions were 
meaningful and which ones were a burden.

As Software Engineers, we write code. In coding, there are fun parts and 
there is drudge work. There is no universally accepted definition of these, 
so in fact different people might classify the following in vastly 
different ways:
- Putting on headphones in the morning and disappearing into code all day without talking to another person except maybe on the way to the bathroom.
- Diving into a really nasty bug and working with others to reproduce it, understand it, and fix it.
- Solving a tough problem with a unique solution that is not apparent when you start.
- Spending 3 minutes to 3 hours to write a clever script to automate some drudgery or meet a current need. And then throwing it away.

For me, there is no doubt about it. Ever since I was introduced to Unix System 5
at Bell Labs, I've loved scripting in little languages: shell, awk, sed, ...

The world of scripting has changed, of course. For a long while, it became 
synonomous with perl, which had an almost religious following. Most languages
that have adherents and true believers eventually wind up with excessive 
complexity. Scripting should be about doing a limited number of tasks in a 
simple manner. Giant scripts become far less maintainable than 
small applications.

Let me say that again: Scripting should be about doing a limited number of 
tasks in a simple manner.

Scripting is a good match for tasks in cloud computing:
- creating resources
- configuring resources
- starting or stopping virtual machines
- deleting unused resources
- getting information on your setup for later analysis

Let's take a concrete look at a good use for scripting: setting up and tearing 
down learning environments. I'm currently working my way through Skylines 
[Skylines' AZ-303 certification course.](https://courses.skylinesacademy.com/p/microsoft-az-303-certification-course-azure-architect-technologies/)

I find it helpful to have an environment that I can setup and tear down that
has the following:
- A resource group to contain all of the resources for this setup
- A Virtual Network (VNET)
- 3 subnets
- A Windows VM

This little configuration is useful for following along with the examples in the
training, which contains material on Powershell.

So, is this script useful, or just an exercise? Truth be told, I wasted money 
when I was studying for my AWS certifications. I would spin up a virtual
machine, get busy with other things, and it would run for a week. I would 
get billed for a week simply because I had forgotten it and left it running
or just provisioned.

I have two Powershell scripts: createSetup1.ps1 and deleteSetup1.ps1. I've 
generalized them so that aadditional setups should be easy. I developed them on
VSCode on my Mac. VSCode and Powershell on the Mac work seamlessly for these
purposes. 

I put the configurations in variables in one file and wrap the Azure commandlets
in functions for reuse in later setups.

A few snippets here:

```
$location = "EastUS"
$rg = "myblogRG"

function New-ResourceGroup {
    param (
        [string]$Location,
        [string]$ResourceGroupName
    )

    echo "Creating new resource group $ResourceGroupName at $Location"

    New-AzResourceGroup -Name $ResourceGroupName -Location $Location
}
function Remove-ResourceGroup {
    param (
        [string]$ResourceGroupName
    )

    Remove-AzResourceGroup -Name $ResourceGroupName `
        -Force
}

New-ResourceGroup -ResourceGroupName $rg -Location $location

```
These are actually snippets from 3 different scripts. For the example of 
an actual script, I'll show the text of the delete script below. By the
way, Azure has a thoughtful design here. Every resource lives in a logical
container call a Resource Group. To remove an entire configuration, all we
need to do is remove the resource group. So this script is:

```
$dir = "/Users/mybloguser/sourcecode/powershell/az-303/test_setup"
. $dir/data/config1.ps1

. $dir/bin/createRG.ps1

Remove-ResourceGroup -ResourceGroupName $rg
```
Simple scripts. They were easy to write, they are useful every time I 
start to study, and they save me money. Life is good.
