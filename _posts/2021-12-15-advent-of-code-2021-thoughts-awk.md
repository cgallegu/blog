---
layout: post
title: "Advent Of Code 2021 Thoughts - awk"
date: "2021-12-15 19:03:00 -0500"
tags: ["software development", "awk", "advent of code"]
---

Recently I learnt about [Advent Of Code (AoC)](https://adventofcode.com/about).  
It looked like a good opportunity to try out new languages: challenging problems that you can tackle in a day or so.  

My go-to language these days is Java, just because I use it on a day-to-day basis. However, I decided not to use it:
I did not have a decent Java setup on my personal computer, and didn't want to spend more than a second setting up stuff.

With that constraint in place, I opted for things that were readily available in a regular macOS setup. I picked
`awk`, as it looked like a good fit for the [first AoC 2021 problem](https://adventofcode.com/2021/day/3). I used `vim` as an IDE. Barebones setup.

My take on `awk` after 5 problems:

- not having to deal with "how do I read a file in `${language}`" is liberating
- not having to deal with "how do I parse this `${delimiter}`-delimited string in `${language}`" is awesome
- you can go a long way with just associative arrays
- not having a basic standard library, I feel I spent more time analyzing and hashing out a high level solution than typing code, compared to my daily routine. I feel this led to arriving to correct solution faster
- bugs caused by global state are time consuming to troubleshoot
- data format matters: pivoting the input made some solutions trivial [day 3](https://adventofcode.com/2021/day/3)
- I feel that as the problem's solution required context that spanned more than one line, using `awk` made less sense

My take on `vim` as an IDE:

- so f-a-s-t
- it takes a while to learn to do the basic stuff.
- you only need to learn a little to be productive
- any other IDE has unbearable typing latency/is slow/bloated/etc.

I'm also trying [go](https://go.dev), will post some thoughts.
