Now we are ready to clone your fork of this
[repo](https://github.com/GitCertifiedCollaborator/PullRequestCertification).

Go to your fork of that repo, and click the `Clone or download` button,
you should see either `Clone with SSH` or `Clone with HTTPS`, if the
latter click the `Use SSH` link to the right.

Now click the `copy button` or select the link that looks like
`git@github.com:YOUR_USERNAME/PullRequestCertification.git`
and copy it directly.

Now back in the terminal on the right clone that repo like this
(changing YOUR_USERNAME for your github username):

```
git clone git@github.com:YOUR_USERNAME/PullRequestCertification.git
```

Then change into that directory:

`cd PullRequestCertification`{{execute}}

Now create a branch of your name and check it out in a single step:

`git checkout -b YOUR_NAME`{{execute}}

Echo your name into the certified.md file:

```
echo YOUR_NAME >> certified.md
```

Then let's show that certified.md file has changed:

`git status`{{execute}}

Then let's show the diffs:

`git diff`{{execute}}

Now commit your changes:

```
git commit -am 'Adding YOUR_NAME to certified.md'
```

And push your new branch back to your fork of the repo:

```
git push -u origin YOUR_NAME
```

Click the continue button to proceed.
