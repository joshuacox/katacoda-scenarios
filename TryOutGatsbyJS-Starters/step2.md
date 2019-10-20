## Initialize a directory for Gatsby, build, and serve

This time we'll install a gatsby starter and go from there.

Show Gatsby help

`gatsby --help`{{execute}}

The `gatsby new` command will install a gatsby
[starter](https://www.gatsbyjs.org/docs/starters/)
given an url to the starter git repo.

First go browse the
[community starters](https://www.gatsbyjs.org/starters/?v=2).

`gatsby new my-new-starter `{{execute}}

then change directory into your new starter:

`cd my-new-starter`{{execute}}

Build and Serve in Developer mode:

`gatsby develop --port 80 --host 0.0.0.0`{{execute}}

You should now be able to view gatsby on port 80.
