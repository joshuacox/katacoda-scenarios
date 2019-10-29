Now `cd` into that repo.

```
cd YOURREPO
```

Make a new index and add it to git as a tracked file, commit, then push it back up to github.

`echo "Howdy folks" > index.html`{{execute}}

^ The `echo` command is an easy way to add a line to a file, or in this case overwrite the file (which is the difference between > and >>, but I’ll save the rest of that lecture for a tutorial on STDIN STDOUT and STDERR redirection and piping!).

`git add index.html`{{execute}}

^ Add the README file to git.

`git commit -am “added new index.html”`{{execute}}

^ Make a new commit in git.

`git push origin master`{{execute}}

^ Push it all back up to github (or whatever your origin is set to).

Now click on the ‘settings’ page for your repo.
In there you will find a section called `Github Pages` and under there a
subsection called `Source` like this:
```
Source
GitHub Pages is currently disabled. Select a source below to enable
GitHub Pages for this repository. Learn more.
```
Then click on the dropdown that says "None" and choose 'master branch'.
Now your site will be served under:

http://YOURGITHUBID.github.io/YOURREPO

Congratulations you now have a static site!
