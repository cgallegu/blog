---
layout: post
title: "It is _not_ `Working as expected`"
tags: ["software development", "bugs"]
---

A bug is whenever a user _perceives_ the system is not behaving _as
expected_. It's all about perception: it might or might not be behaving
incorrectly, but as long as someone feels it's not, that's what matters.

The easy reports are the ones where the bug is actually in the code: things are
not getting saved when they should, mails are not getting sent when they
should, widgets are not getting widgeted when they should.

The tricky ones are when the system is behaving correctly. You'll be tempted to
close those as `Working as expected`. That is _bad_ user experience.  
That person went out of their way to tell you something is wrong, and you're
just telling them "yeah, it is ok if you think things are wrong. We're
not doing anything about it. Maybe you're wrong? For sure _my_ system _is not_.".

A bug report that gets closed as `Working as expected` is not a bug in the
code. It's a bug in the UI. It's a bug in the documentation. It's a bug in
wherever you can change to prevent this user (and the next one) from _perceiving_ the system
worked that way.

Let's stop saying its `Working as expected`. It's clearly not. Let's fix it.

