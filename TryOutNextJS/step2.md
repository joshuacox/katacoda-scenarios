## Initialize a directory for Next, build, and serve

We'll follow the official [tutorial](https://nextjs.org/docs) to get a NextJS Test Site

I'll have all the commands queued up for you below, but you'll still need to follow along the tutorial.

First create a new `nextjs-test` site:

`npx create-next-app`{{execute}}

Assuming you called your project `nextjs-test`:

`cd nextjs-test`{{execute}}

`npm run dev -- --port 80 --hostname 0.0.0.0`{{execute}}

or using `yarn`

`yarn dev -- --port 80 --hostname 0.0.0.0`{{execute}}

You should now be able to view your test site on port 80.  Of note, we are using the option `--port 80 --hostname 0.0.0.0` here to make the other panes work to the right when viewing port 80, at home on your local machine you can leave these off and then visit 127.0.0.1 or localhost on port 3000.
