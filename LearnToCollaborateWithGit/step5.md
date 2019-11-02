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

`echo '1. YOUR_NAME' >> certified.md`{{execute}}

Important Note: notice the use of `>>` and NOT `>`.  This appends to the
file instead of overwriting it! If you overwrite the file instead of
appending then your pull request will be denied!

Then let's show that certified.md file has changed:

`git status`{{execute}}

Then let's show the diffs:

`git diff`{{execute}}

If you messed and overwrote the file instead of appending this will be
very evident at this point, as the diff will show you that you are removing everyone
elses name!

Now commit your changes:

`git commit -S -s -am 'Adding YOUR_NAME to certified.md'`{{execute}}

  Note: we are using the `-s` option which will append a `sign-off` message to your commit message, and the `-S` option which will tell git to use the gpg key we configured in step4 to sign the commit.  The `-S` option will fail if you did not complete the gpg steps in step 4!  I have added these options to this tutorial as many open source projects will require these options.  The reasons behind both are beyond this tutorial.  But I would point you to [here](https://stackoverflow.com/questions/1962094/what-is-the-sign-off-feature-in-git-for) about signing off, and [here](https://git-scm.com/book/en/v2/Git-Tools-Signing-Your-Work) about signing your work and what that means.

Finally we will push your new branch back to your fork of the repo:

`git push -u origin YOUR_NAME`{{execute}}

Click the continue button to proceed.

### Bonus section: Squash and merge

Ok, let's pretend you forgot to sign your commits and the CI from the project you are submitting has rejected your PR.  Let's learn to squash all your commits into a single commit and sign that commit so you can resubmit a new PR that will not be rejected.

First you need to checkout a clean branch from the project, in this case we'll grab `origin/master`:

`git checkout origin/master`{{execute}}

Then checkout a new branch that we'll be squashing and merging to:

`git checkout -b YOUR_NAME_signed`{{execute}}

Then let's squash and merge all the commits from your branch:

`git merge --squash YOUR_NAME`{{execute}}

The `--squash` option here does the magic in combination with a merge it squashes all the commits into a single commit.

Then you make the actual commit this time using the `-s` and `-S` options:

`git commit -S -s -am 'Adding YOUR_NAME to certified.md squashed, merged, signed, and signed off'`{{execute}}

And that's how you fix a commit that was not signed.
