Now visit your SSH keys page on github and delete the key that was
created on this VM.
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
