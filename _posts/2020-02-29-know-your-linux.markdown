---
layout: post
title: "Know your Linux"
date: "2020-02-29 20:23:15 -0800"
tags: ["software development", "shell"]
---

For your Linux shell scripting needs, it is likely that what you need already exists.  

This is the case for simple and complex stuff.  

I found myself wanting to copy files from one directory to another, but only the ones
that had changed. Unchanged files (and their dates) should be left undisturbed.

I remembered `rsync` did some of that magic. A few minutes diving into `man rsync`
show the following incantation can do that:

> -I, --ignore-times          don't skip files that match size and time  
> -c, --checksum              skip based on checksum, not mod-time & size  
> -r, --recursive             recurse into directories  

`-I` will make `rsync` not use size and time to decide what to copy (which I understand
is the default behavior). `-c` will skip based on the checksum, calculated based on the
content, so will skip identical files. `-r` is in there just because I need to copy the
whole tree starting at a directory.

Having started using Linux ~4 years ago, I've still got a lot to learn. Getting used to
reading `man` pages and also `info` has helped a lot, so I'm making it a habit.
