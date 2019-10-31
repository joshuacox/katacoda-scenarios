Before we clone your fork of this repo, let's setup your account for SSH
access.

We are going to create some encryption keys that will identify
you to git and allow you to upload changes without typing your password.

This is much more secure and should be considered a best practice.

You can follow all of these steps on your local computer,
or use the terminal from the VM we have spun up on katacoda.

However, remember to delete the keys from
this VM off of your github account when we finish (that will be the last
step of this tutorial).

The
[official github documentation](https://help.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
is very good on this subject and we will be following
[it](https://help.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
for the most part (any differences will be explained).

First we will identify our name and email address to git.

`git config --global user.email "your_email@example.com"`{{execute}}

`git config --global user.name "Your Name"`{{execute}}

Feel free to substitute your real name and email address in those
commands.

`ssh-keygen -t ed25519 -C "your_email@example.com"`{{execute}}

Here we chose to use the ed25519 algorithm as it is newer and more
secure than the default rsa key used in the github docs.

When you're prompted to "Enter a file in which to save the key," press
Enter. This accepts the default file location.

```
> Enter a file in which to save the key (/home/you/.ssh/id_ed25519): [Press enter]
```

At the prompt, type a secure passphrase. For more information, see
"Working with SSH key passphrases".

```
> Enter passphrase (empty for no passphrase): [Type a passphrase]> Enter same passphrase again: [Type passphrase again]
```

You can also just hit return twice for an empty passphrase (but please
realize that anyone can use your key now if they have it).


Click continue to proceed.
