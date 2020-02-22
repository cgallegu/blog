---
layout: post
title: "On fixing bugs"
tags: ["software development"]
---

# NOTES
- Refer to "It's not working as expected".
- Keep it short
- Maybe this needs to go after "using 5 whys to dissect a bug report"

Lately I've found myself troubleshooting a system very frequently.  
confusion, anxiety. undirected search, pokeing here and there.

Realization: I need to direct my investigation, give it structure.

Go back to basics:

1. How is the system behaving?
1. What is the expected behavior?
1. What steps reproduce unexpected behavior?

Arriving at a detailed and accurate description of these three steps will save a lot of time
and headaches. For example, what you _think_ the problem is might not be

1. Follow the steps to reproduce the unexpected behavior. The unexpected happens.
1. Change the system in a way you _think_ replaces the unexpected behavior with the expecte done.
1. Follow the steps to reproduce the unexpected behavior again. The unexpected _does not_ happen. The expected does.

