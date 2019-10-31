###  explanations

`pwd`{{execute}}

^ The command `pwd` should print the path to your home directory at the moment
by default this is where you usually start when opening a shell

`cd /tmp`{{execute}}

^ Change directory to `/tmp`.

(/tmp is a great place for temporary stuff, careful this place is erased upon reboot)


`pwd`{{execute}}

^ Prove to me that we changed directories (i.e. it should now print /tmp).

`mkdir git2`{{execute}}

^ Make a new directory named ‘git2’.

`cd git2`{{execute}}

^ Change into the `git2` directory.

`pwd`{{execute}}

^ Now displays `/tmp/git`.

`git init`{{execute}}

^ Initialize `/tmp/git2` into a git repo.

`echo 'my test' >test1`{{execute}}

^ Overwrite or make a new file called test1 and makes its contents read ‘my test’.

`ls`{{execute}}

^ Show me this new file.

`cat test1`{{execute}}

^ Dumps the contents of the file which should be ‘my test’.

`git status`{{execute}}

^ Have git tell us of any changes in the current directory.

`git add test1`{{execute}}

^ Add our new file to the git source code tracking system.


`git status`{{execute}}

^ Show us that the new file has now been added.

`git config --global user.email "testy@example.com"`{{execute}}

^ This adds your email to your local gitconfig `~/.gitconfig`

`git config --global user.name "Testy McTesterson"`{{execute}}

^ This adds your name to your local gitconfig `~/.gitconfig`

`git commit -am 'initial add of test1'`{{execute}}

^ Make a commit and give it a nice message explaining what is going on.

`git log`{{execute}}

^ Show us a log of the history of this git repo.

`echo 'second test' >>test1`{{execute}}

^ Make a second line in our first test file.

`git status`{{execute}}

^ Show us which files have changed.

`echo 'second test file'>test2`{{execute}}

^ Make a second test file.

`git status`{{execute}}

^ Again show us which files have changed.

`git diff`{{execute}}

^ Show us the changes.

`git add .`{{execute}}

^ This adds all files and changes present in this directory and all
sub-directories to git source code management tracking system.

`git commit -am 'second test'`{{execute}}

^ Commit those changes.

`git log`{{execute}}

^ Show us a log of the history of this git repo.

`git checkout -b my_new_branch`{{execute}}

^ This creates a new branch and checks that new branch out in a single command.

`echo 'second test file but add to the first line'> test2`{{execute}}

^ This overwrites that second file with a new first line.

`git status`{{execute}}

^ This should show us that the second file has changed.

`git diff`{{execute}}

^ This should show us the differences in the second file that has changed.

`git commit -am 'third test'`{{execute}}

^ This will commit the differences in the second file that has changed.

`git log`{{execute}}

^ This will now show the commit where we committed the differences in the second file that has changed.

`git checkout master`{{execute}}

^ This will now checkout the master branch.

`git log`{{execute}}

^ This will not show the most recent commit we made because that was in the other branch `my_new_branch` because are back on the master branch.

`git diff my_new_branch`{{execute}}

^ This will show the difference between the master branch and the `my_new_branch` branch.

`git merge my_new_branch`{{execute}}

^ This will merge the differences between the master branch and the `my_new_branch` branch.

`git log`{{execute}}

^ This will now show the most recent commit we just made because we just merged the other branch `my_new_branch` into the master branch.

Click the continue button to continue.
