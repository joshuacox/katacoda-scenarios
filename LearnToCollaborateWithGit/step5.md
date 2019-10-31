Now we are ready to clone your fork of this
[repo](https://github.com/GitCertifiedCollaborator/PullRequestCertification).

Go to your fork of that repo, and click the `Clone or download` button,
you should see either `Clone with SSH` or `Clone with HTTPS`, if the
latter click the `Use SSH` link to the right.

Now click the `copy button` or select the link that looks like
`git@github.com:YOUR_USERNAME/PullRequestCertification.git`
and copy it directly.

Now back in the terminal on the right clone that repo like this
(changing YOUR_USERNAME for your github username, or perhaps just typing
'git clone ' and pasting the link from above).

`git clone git@github.com:YOUR_USERNAME/PullRequestCertification.git`{{execute}}

Then change into that directory:

`cd PullRequestCertification`{{execute}}

Now create a branch of your name and check it out in a single step:

`git checkout -b YOUR_NAME`{{execute}}

Echo your name into the certified.md file:

`echo YOUR_NAME >> certified.md`{{execute}}

Then let's show that certified.md file has changed:

`git status`{{execute}}

Then let's show the diffs:

`git diff`{{execute}}

Now commit your changes:

`git commit -S -s -am 'Adding YOUR_NAME to certified.md'`{{execute}}

Note: we are using the `-s` option which will append a `sign-off` message to your commit message, and the `-S` option which will tell git to use the gpg key we configured in step4 to sign the commit.

And push your new branch back to your fork of the repo:

`git push -u origin YOUR_NAME`{{execute}}

Click the continue button to proceed.
