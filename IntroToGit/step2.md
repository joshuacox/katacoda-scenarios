Cli-Intro-to-Git
==========

### Introduction to git on the command line in 60 seconds or less

Note: you can click the commands below and they will be pasted and
executed into the terminal on the right.  However, if you want to learn
I recommend you type them.

Type these commands directly into bash your terminal on the right -->

`pwd`{{execute}}

`cd /tmp`{{execute}}

`pwd`{{execute}}

`mkdir git`{{execute}}

`cd git`{{execute}}

`pwd`{{execute}}

`git init`{{execute}}

`echo 'my test' >test1`{{execute}}

`ls`{{execute}}

`git status`{{execute}}

`git add test1`{{execute}}

`git status`{{execute}}

`git commit -am 'initial add of test1'`{{execute}}

`git config --global user.email "testy@mctesterson.com"`{{execute}}

`git config --global user.name "Testy McTesterson"`{{execute}}

`git commit -am 'initial add of test1'`{{execute}}

`git log`{{execute}}

`echo 'second test' >>test1`{{execute}}

`git status`{{execute}}

`git diff`{{execute}}

`echo 'second test file'>test2`{{execute}}

`git status`{{execute}}

`git diff`{{execute}}

`git add .`{{execute}}

`git commit -am 'second test'`{{execute}}

`git log`{{execute}}


After typing all the commands above click continue.
