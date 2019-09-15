## Try Out Zola

Now let's look try out Zola locally

##### Copy the zola binary out of the container to /usr/local/bin

`docker cp $(cat .zola-test.cid):/usr/bin/zola /usr/local/bin/zola`{{execute}}

##### Local execution

`cd /root/test_site && zola serve -i 0.0.0.0 -p 8080`{{execute}}

Again at this point zola should be serving on port 80, but I am not getting anything back.
