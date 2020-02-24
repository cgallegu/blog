---
layout: post
title:  "Latency and Throughput"
---

A few months ago I read 
Stuart Cheshire's [It's the latency, stupid](http://www.stuartcheshire.org/rants/latency.html), where the main takeaway is that while it's easy to improve throughput by adding more links, it's not that easy to improve latency. This struck a chord, as this can be extended to services (as in service oriented architecture, client-server model, etc.).

## The pizza shop
You have a pizza shop. You have an oven to bake your pizzas. It takes you 6 minutes to bake a pizza. The oven is pretty simple too: it can only do one pizza at a time.

You open your shop. First day is quiet: one curious (and hungry) person pops in, orders a pizza and after 6 minutes it walks away with lunch. That's it.

## Winter comes
Winter comes. Suddenly it's very cold. People are not willing to wait 6 minutes anymore. Even that single curious customer turns you down. You need to reduce the wait time.

What are your options?

1. Reduce bake time: get an oven that takes less to produce the same result. This can take a long time is that is not available right away. As it is a new oven, there's the risk that it does not produce the same results. You might also have to learn how to operate it and what its quirks are.

2. Make the oven bake more pizzas at the same time (somehow): not useful. Customers still have to wait 6 minutes for their pizza, regardless of how many you can bake at the same time.

3. Add more ovens: same as 2.

Your only option is 1.

## You're popular now
You close shop for winter, waiting for warmer days to come (and thus more patient customers). It's summer and you're getting popular. Customers start coming more often, say, every 7 minutes. You're barely keeping up: sometimes a few customers have to wait an extra minute our two. They're not too happy, but they wait anyway.

Next day is a mess. People start pouring in every 3 minutes. As you oven can only do one pizza at a time, you can only get one pizza every six minutes out of it. People get tired of waiting and leave.

What are your options?

1. Reduce bake time: that kinda works. If you cut the bake time by half while still getting the same results (somehow), you'll be able to serve at this new request rate. We already know the downsides of this option, though. Note that you _cannot_ keep reducing baking time forever: you need to bake your pizza at least a little bit.

2. Make the oven bake more pizzas at the same time (somehow): This helps. If you double the pizzas the oven can bake at a time, you'll be able to serve at this new request rate. You'll have to do some changes to the oven for this, which might be risky as you might break it in the process. Changing it will also take some time. It will also behave differently, so you'll have to learn the new quirks it might have.

3. Add more ovens: This also helps for the same reason as above.  You don't need to change the oven, so no risk of breaking it. The new oven behaves exactly as the old one, so no risk of running into any surprises. As long as you're able to procure ovens quickly, your customers won't even notice.

While 2. and 3. produce the same result, 3. is less risky. It is also faster as long as you can get those ovens quickly (ie: find a 'cloud oven provider').

So it boils down to:

> Design for low latency and achieve throughput by horizontal scaling

Do not overlook the 'low latency' part: there is no quick and easy way to reduce a system's latency. If your system is design to scale horizontally, increasing throughput is just a matter of doing so.

## The gotchas

One usual gotcha when designing for horizontal scale is when you run your initial version in a single node. Then when you actually scale out, things start falling apart because you never exercised the 'horizontal scaling' characterstics of your system. So, start from the get go with at least 2 nodes/hosts/scaling unit.

Some might argue that scaling out gets expensive quickly. While it might, being able to do can help you keep serving your customers while you figure out how to make your node/hosts/scaling unit process more requests at the same time or reducing latency.

Horizontal scaling has its gotchas too if you fall for the 'infinite scaling' siren call: you want to make sure that your dependencies can scale with you. Otherwise you'll either break them as you scale out, or they will deny service (kick you out). One example is high-scale cryptomining: while adding mining nodes increases your cluster processing capacity, you'll want to make sure the power company [will actually provide juice](https://www.forbes.com/sites/williampentland/2018/03/25/bitcoin-mining-triggers-backlash-from-electric-utilities/#515067233997) to your farm.