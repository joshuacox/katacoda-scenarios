## Initialize a directory for Gatsby, build, and serve

We'll follow the official tutorial [part-zero](https://www.gatsbyjs.org/tutorial/part-zero/) to get a Gatsby hello-world

I'll have all the commands queued up for you below, but you'll still need to follow along the tutorial.

First install gatsby-cli

`npm i -g gatsby-cli`{{execute}}

Show Gatsby help

`gatsby --help`{{execute}}

Optionally install yarn if you want to choose it as your package manager in the following step

`npm i -g yarn`{{execute}}

Init

`gatsby new hello-world https://github.com/gatsbyjs/gatsby-starter-hello-world`{{execute}}

Build and Serve in Developer mode

`cd hello-world`{{execute}}

`gatsby develop --port 80 --host 0.0.0.0`{{execute}}

You should now be able to view gatsby on port 80
