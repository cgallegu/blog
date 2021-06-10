---
layout: post
title: "'cannot load such file -- webrick' in ruby 3.0, jekyll"
date: "2021-06-09"
tags: ["ruby", "jekyll"]
---

Fix:  `bundle add webrick`

## tl;dr;
If you're getting this error mesage:

```
`require': cannot load such file -- webrick (LoadError)
```

after upgrading to ruby 3.0, you need to add `webrick` to your `Gemfile`:

```
bundle add webrick
```

This should not break anything if you're running on older rubies.

## Why?
[Jekyll serve fails on Ruby 3.0](https://github.com/jekyll/jekyll/issues/8523).
