---
layout: post
title: Setting up Jekyll in an Amazon Linux 2 box
excerpt: Get Jekyll running on your AL2 box in a few simple steps.
---

## One time setup
### System-wide setup
You need to install `ruby` and some packages to build native extensions. As you'd expect,
you need root permission to do that.

Amazon Linux 2's `yum` has a pretty old Ruby version available. You can enable
a more recent one via `amazon-linux-extras`.

```
sudo amazon-linux-extras enable ruby2.6
sudo yum install ruby-devel gcc gcc-c++ zlib-devel
```

_Note: those are the minimum packages I needed to get my blog going, which has a 
very minimal setup. You might need more if your setup is more complex._

### Per-user setup (ie: in your user account)
Install the `jekyll` and `bundler` gems.  
Also, ensure `bundler` installs gems under your user.

```
gem install jekyll bundler
bundle config path ~/.gem
```

### Per-blog setup
You can specify the output path in your blog's `_config.yaml`. Jekyll will 
deploy the blog there. It will **obliterate** any files on the output path
that are not part of your blog (see [the big red warning in the docs](https://jekyllrb.com/docs/configuration/options/#global-configuration)).

In my case, I found reasonable to use `~/public_html/blog` as destination
and let my current web server config pick it up from there.

As I'm not serving it from the root, I also set the `baseurl` attribute to match.

```
destination: ~/public_html/blog
baseurl: blog/
```

## Publishing
Run `bundle exec jekyll build` to publish.
