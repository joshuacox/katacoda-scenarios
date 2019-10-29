###  explanations

`pwd`{{execute}}

^ pwd should print the path to your home directory at the moment
by default this is where you usually start when opening a shell

`cd /tmp`{{execute}}

^ change directory to /tmp

(/tmp is a great place for temporary stuff, careful this place is erased upon reboot)


`pwd`{{execute}}

^ prove to me that we changed directories (i.e. it should now print /tmp)

`mkdir git`{{execute}}

^ make a new directory named ‘git’

`cd git`{{execute}}

^ change into the git directory

`pwd`{{execute}}

^ now displays /tmp/git

`git init`{{execute}}

^ initialize /tmp/git into a git repo

`echo 'my test' >test1`{{execute}}

^ overwrite or make a new file called test1 and makes its contents read ‘my test’

`ls`{{execute}}

^ show me this new file

`cat test1`{{execute}}

^ dumps the contents of the file which should be ‘my test’

`git status`{{execute}}

^ have git tell us of any changes in the current directory

`git add test1`{{execute}}

^ add our new file to gits tracking system

`git status`{{execute}}

^ show us that the new file has now been added

`git commit -am 'initial add of test1'`{{execute}}

^ make a commit and give it a nice message explaining what is going on

`git log`{{execute}}

^ show us a log of the history of this git repo

`echo 'second test' >>test1`{{execute}}

^ make a second line in our first test file

`git status`{{execute}}

^ show us which files have changed

`echo 'second test file'>test2`{{execute}}

^ make a second test file

`git status`{{execute}}

^ again show us which files have changed

`git diff`{{execute}}

^ show us the changes

`git commit -am 'second test'`{{execute}}

^ commit those changes

`git log`{{execute}}

^ show us a log of the history of this git repo
