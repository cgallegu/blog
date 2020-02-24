---
layout: post
title: "Two Linux shell scripting tips"
date: "2020-02-24"
tags: ["software development", "scripting"]
---

Eventually you'll find yourself writing some Linux shell script. That means soon you'll find yourself _debugging_ said script.  
These couple things helped me a lot.

`set -x` will display output that is _very_ useful for debugging.

> -x      After  expanding each simple command, for command, case command, select command, or arithmetic for command, display the expanded value of PS4, followed by the command and its expanded arguments or associated word list.

`set -e` will stop the script immediately when some things fail. Makes your scripts safer.

> -e      Exit  immediately  if  a pipeline (which may consist of a single simple command),  a subshell command enclosed in parentheses, or one of the commands exe‐
                      cuted as part of a command list enclosed by braces (see SHELL GRAMMAR above) exits with a non-zero status.  The shell does not exit if  the  command  that
                      fails  is  part  of the command list immediately following a while or until keyword, part of the test following the if or elif reserved words, part of any
                      command executed in a && or || list except the command following the final && or ||, any command in a pipeline but the last, or if  the  command's  return
                      value  is  being  inverted with !.  A trap on ERR, if set, is executed before the shell exits.  This option applies to the shell environment and each sub‐
		      shell environment separately (see COMMAND EXECUTION ENVIRONMENT above), and may cause subshells to exit before executing all the commands in the subshell.

