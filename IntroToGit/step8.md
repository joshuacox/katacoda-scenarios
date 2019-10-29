Now `cd` into that repo.

`cd YOURREPO`{{execute}}

Make a new readme and add it to git as a tracked file, commit, then push it back up to github.

`echo ‘# Howdy folks!’>README.md`{{execute}}

^ The `echo` command is an easy way to add a line to a file, or in this case overwrite the file (which is the difference between > and >>, but I’ll save the rest of that lecture for a tutorial on STDIN STDOUT and STDERR redirection and piping!).

`git add README.md`{{execute}}

^ Add the README file to git.

`git commit -am “added new README.md”`{{execute}}

^ Make a new commit in git.

`git push origin master`{{execute}}

^ Push it all back up to github (or whatever your origin is set to).

Now click on the ‘settings’ page for your repo.
In there is large button labeled “Launch Automatic Page Generator”.
On the resulting page click “Load README.md”.
Then click “Continue to Layouts” in the bottom right hand corner.
Choose a layout and save your static site, your new site is now available at an address like this one:

http://YOURGITHUBID.github.io/YOURREPO

Congratulations you now have a static site!
