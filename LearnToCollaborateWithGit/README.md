Cli-Intro-to-Git
==========

### Introduction to git on the command line in 60 seconds or less


Type these commands directly into bash your terminal, shell, command line interpreter, whatever you want to call it [tested in bash, sh, and zsh ymmv]

```
pwd
cd /tmp
pwd
mkdir git
cd git
pwd
git init
echo 'my test' >test1
ls
git status
git add test1
git status
git commit -am 'initial add of test1'
git log
echo 'second test' >>test1
git status
echo 'second test file'>test2
git status
git commit -am 'second test'
git log
```

### WTF?!?!
 Ok so that was git in 60 seconds.  What just went on?  Let me be a bit more verbose with an intro of some very basic commands with a basic explanation after:
```
pwd
```
^ Print Working Directory (the "you are here" of unix land)
```
mkdir
```
^ make directory/folder
```
cd
```
^ change directory (this is how you 'move' around the file system
```
ls
```
^ list the current directory i.e. show me what is in the current folder
```
man
```
^ “manual” gives the manual page for any command i.e. `man ls` will give the manual page for ls
```
man git
```
^ At some point you'll feel confident enough to just pull this page up for reference, not just yet

### Learning what is going on

you should type all these commands into your command prompt
like learning a new language it's best for you to actually speak (type) the words
and see the resulting output, it's very satisfying to see your creation take life
let's see those first commands again with some comments to explain what's going on

###  explanations
```
pwd
```
^ pwd should print the path to your home directory at the moment
by default this is where you usually start when opening a shell
```
cd /tmp
```
^ change directory to /tmp

(/tmp is a great place for temporary stuff, careful this place is erased upon reboot)

```
pwd
```
^ prove to me that we changed directories (i.e. it should now print /tmp)
```
mkdir git
```
^ make a new directory named ‘git’
```
cd git
```
^ change into the git directory
```
pwd
```
^ now displays /tmp/git
```
git init
```
^ initialize /tmp/git into a git repo
```
echo 'my test' >test1
```
^ overwrite or make a new file called test1 and makes its contents read ‘my test’
```
ls
```
^ show me this new file
```
cat test1
```
^ dumps the contents of the file which should be ‘my test’
```
git status
```
^ have git tell us of any changes in the current directory
```
git add test1
```
^ add our new file to gits tracking system
```
git status
```
^ show us that the new file has now been added
```
git commit -am 'initial add of test1'
```
^ make a commit and give it a nice message explaining what is going on
```
git log
```
^ show us a log of the history of this git repo
```
echo 'second test' >>test1
```
^ make a second line in our first test file
```
git status
```
^ show us which files have changed
```
echo 'second test file'>test2
```
^ make a second test file
```
git status
```
^ again show us which files have changed
```
git diff
```
^ show us the changes
```
git commit -am 'second test'
```
^ commit those changes
```
git log
```
^ show us a log of the history of this git repo

# Permanent home for git

Okay from here let’s make a git directory in our home and start cloning repos from a git repo
```
cd
```
^ given no arguments cd will take you home
```
pwd
```
```
mkdir git
```
^ there is no output for this command
```
cd git
```
^ again no output on this command so long as there are no errors
but let's prove to ourselves that we changed directories with `pwd`
```
pwd
```

# Creating your own repo 

Let’s get you your own repo and make a static page

If you don’t have a github account get one it’s free

now make a new repo, first let’s make sure we are in our git directory in the home folder
```
cd ~/git
```

ok now let's clone that repo! There is a link in the bottom righthand corner copy it then `git clone` that link

here’s an example of what it might look like:
```
git clone https://github.com/YOURGITHUBID/YOURREPO.git
```
the output should look something like this:
```
Cloning into 'YOURREPO'...
remote: Counting objects: 331, done.
remote: Compressing objects: 100% (2/2), done.
remote: Total 331 (delta 0), reused 0 (delta 0)
Receiving objects: 100% (331/331), 3.65 MiB | 483.00 KiB/s, done.
Resolving deltas: 100% (43/43), done.
Checking connectivity... done.
```

now `cd` into that repo

```
cd YOURREPO
```
make a new readme and add it to git as a tracked file, commit, then push it back up to github
```
echo ‘# Howdy folks!’>README.md
```
^ echo is an easy way to add a line to a file, or in this case overwrite the file (which is the difference between > and >>, but I’ll save the rest of that lecture for a tutorial on STDIN STDOUT and STDERR redirection and piping!)
```
git add README.md
```
^ add the README file to git
```
git commit -am “added new README.md”
```
^ make a new commit in git
```
git push origin master
```
^ push it all back up to github (or whatever your origin is set to)

now click on the ‘settings’ page for your repo, in there is large button labeled “Launch Automatic Page Generator”, on the resulting page click “Load README.md”, then click “Continue to Layouts” in the bottom right hand corner, choose a layout and save your static site, your new site is now available at an address like this one: 

http://YOURGITHUBID.github.io/YOURREPO

Congratulations you now have a static site!
