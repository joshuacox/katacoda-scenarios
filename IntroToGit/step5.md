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
