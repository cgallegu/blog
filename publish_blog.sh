#!/usr/bin/env bash
set -e
# To find bundle et al
PATH=/usr/local/bin:/usr/bin:/home/cgk/bin:/usr/local/sbin:/usr/sbin:/home/cgk/bin
echo `date +'[%Y-%m-%d %H:%M:%S]'` Started
pull_result=$(git pull)
if [ $? -ne 0 ] ; then
	echo "$pull_result"
elif [ "$pull_result" != "Already up to date." ] ; then
	echo "$pull_result"
	bundle exec jekyll build
fi
echo `date +'[%Y-%m-%d %H:%M:%S]'` End

