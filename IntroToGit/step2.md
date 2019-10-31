Cli-Intro-to-Git
==========

### Introduction to git on the command line in 60 seconds or less

Type these commands directly into the Bash your terminal on the right -->

`pwd`{{execute}}

`cd /tmp`{{execute}}

`pwd`{{execute}}

`mkdir git`{{execute}}

`cd git`{{execute}}

`pwd`{{execute}}

`git init`{{execute}}

`echo 'my test' > test1`{{execute}}

`ls`{{execute}}

`git status`{{execute}}

`git add test1`{{execute}}

`git status`{{execute}}

`git commit -am 'initial add of test1'`{{execute}}

^this command will fail with an error message about git requesting you
identify yourself, so let's do that.

`git config --global user.email "testy@example.com"`{{execute}}

`git config --global user.name "Testy McTesterson"`{{execute}}

`git commit -am 'initial add of test1'`{{execute}}

`git log`{{execute}}

`echo 'second test' >> test1`{{execute}}

`git status`{{execute}}

`git diff`{{execute}}

`echo 'second test file'> test2`{{execute}}

`git status`{{execute}}

`git diff`{{execute}}

`git add .`{{execute}}

`git commit -am 'second test'`{{execute}}

`git log`{{execute}}

`git branch`{{execute}}

`git checkout -b my_new_branch`{{execute}}

`echo 'second test file but add to the first line'> test2`{{execute}}

`git status`{{execute}}

`git diff`{{execute}}

`git commit -am 'third test'`{{execute}}

`git log`{{execute}}

`git checkout master`{{execute}}

`git log`{{execute}}

`git diff my_new_branch`{{execute}}

`git merge my_new_branch`{{execute}}

`git log`{{execute}}

##### WTF just happened?!?!

After typing all the commands above click continue to go to an
explanation of what just went on.
