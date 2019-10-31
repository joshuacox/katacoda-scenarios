Next we will follow the official docs on [adding a new ssh key to your github account](https://help.github.com/en/articles/adding-a-new-ssh-key-to-your-github-account).

We will use the `cat` utility to display our public key:

`cat ~/.ssh/id_ed25519.pub`{{execute}}

This will look something like this:

```
$ cat ~/.ssh/id_ed25519.pub
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIFaYovE8UnKrOWPvaWMCwgkBp/Vee885DfjpzD41Spgl root@host01
```

Copy the output part:

```
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIFaYovE8UnKrOWPvaWMCwgkBp/Vee885DfjpzD41Spgl root@host01
```

Now let's add this key to your github profile so that gihub will allow
this key to make changes to repos owned by you.

1. In the upper-right corner of any github.com page, click your profile photo, then
click Settings.
1. In the user settings sidebar, click SSH and GPG keys.
1. Click New SSH key or Add SSH key.
1. In the "Title" field, add a descriptive label for the new key. For example, if you're using a personal laptop, you might call this key "Personal laptop".
1. Paste your key into the "Key" field.
1. If prompted, confirm your GitHub password.

Again, if any of the steps above are unclear go to the official github docs about [adding a new ssh key to your github account](https://help.github.com/en/articles/adding-a-new-ssh-key-to-your-github-account).

Now if you don't already have a GPG key let's follow the official github docs.

1. [Generate a new GPG key](https://help.github.com/en/github/authenticating-to-github/generating-a-new-gpg-key)
1. [Add the gpg key to your github account](https://help.github.com/en/articles/adding-a-new-gpg-key-to-your-github-account)
1. [Tell git about your signing key](https://help.github.com/en/articles/telling-git-about-your-signing-key)
1. [Associate an email with your signing key](https://help.github.com/en/github/authenticating-to-github/associating-an-email-with-your-gpg-key)

You should note that some of these steps are very similar to the SSH keys steps.

Click continue to proceed.
