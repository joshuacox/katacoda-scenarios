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
