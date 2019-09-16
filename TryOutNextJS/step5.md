`npm run dev -- --port 80 --hostname 0.0.0.0`{{execute}}

or using `yarn`

`yarn dev -- --port 80 --hostname 0.0.0.0`{{execute}}

You should now be able to view your test site on port 80. i.e. click the `+` sign on the right beside `Terminal` and choose the `View HTTP port 80 on Host 1` option, this will open a new tab where you can view the newly created test site.

Of note, we are using the option `--port 80 --hostname 0.0.0.0` here to make the other panes work to the right when viewing port 80, at home on your local machine you can leave these off and then visit 127.0.0.1 or localhost on port 3000.
