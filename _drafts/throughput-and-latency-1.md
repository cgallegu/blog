---
layout: post
title: Throughput and latency, part 1
---

Takeaways
- You can improve throughput 

A model is a simplification of reality. It reduces the complexity of reality to make it easier to analyze a problem.

Without a model, it is hard or impossible for different people to frame a problem. Without agreeing on a problem, forget about discussing and soling it.

## The model
The context is a software system. Biased towards service oriented architecture.

A client wants to get some work done. It knows that there's a system that does it.
The client sends a request to the system's input.
The system takes the request, processes it and as a result returns a response to the client through the systems' output.

Looks kinda like this (insert diagram here)

client --> request -> input --> system --> output --> response
       ^
       +- units of work go in here

So those are the interaction rules.

To start analyzing this model, let's make some simplifying assumptions.

Assumptions
1. [preservation] Every unit of work that goes in eventually goes out. This way we don't have to think "what if the system lost my request?". 
    1. System never returns a response
    2. System takes arbitrarily long to produce a reponse (similar to above?)
2. [causal] Every response has a corresponding request.
2. [latency] The system takes a constant amount of time to process each request.
    1. Latency is non-deterministic (ie: distribution).
    2. Latency is a function of throughput.
    3. Both. 
3. [capacity] The system can only process a single request at a time. **TODO: Look up actual name for this**
    1. System can proces a constant >1 requests at a time
    2. System can capacity changes dynamically (auto-scaling?)
4. [operations] The system provides a single operation.
    1. Multi operation? (is this worth it?)
5. [error-less] Every request is processed successfully.
    1. Some requests are not processes successfully (errors). Errors happen at a constant rate, and have the same latency as a successful request
    2. Errors have a different latency (infinite or 0)
    3. Errors happen as a function of throughput

Let's have something concrete to explore this problem.

## Latency
Let's say you own a self-service, 24 hour car wash. The car wash has a single washing machine line. You only offer one type of wash ([operations] restriction) and charge $10 for it.

As an owner, one thing you'll want to know is "how long will it take for a car to go out the other side of the washing line once it comes in?". You know your customers don't like to wait forever for their cars to get squeaky clean, so you'll want to track that number. That number is called _latency_.

> Latency: Time it takes a system to produce an output given an input.

So you go and test your car wash by washing your car a few times. Due to the magic of our [latency] assumption, every single time it took 6 minutes for it to come out once you put it in. So your car wash _has a 6 minute latency_. (Note that the car also made it through every single time due to the [preservation] assumptions, which is nice).

One thing to watch out for: latency can change when you change the system's boundaries. When discussing latency with someone, make sure you've agreed on what the system under measure is. **TODO: Add some examples on how the system definition can change measured latency**.

## Throughput
One other thing you'll be interested in is "How many cars per day can this thing wash?" Given that you're charging $10 per wash, the more cars you can wash, the more money you rake in.

> Throughput: amount of requests passing through the system per unit of time.

We already know that it takes 6 minutes for a car to go from input to output. Due to the magic of our [capacity] assumption, that means at most 10 cars can go through the car wash in an hour, which adds up to a maximum of 240 cars/day, or 7,200 cars/month. (1 car / 6 minutes -> 10 cars / 60 minutes -> 240 cars / day).

At $10/car, its 72,000 $/month. Sounds nice, but would be nice to have more, right?

We'll discuss options in a following post.