## Run the container

##### Init

`docker run -it getzola/zola-test init zola-test`{{execute}}

##### Build

`docker run -v /root/test_site:/zola-test -it getzola/zola-test build`{{execute}}

##### Serve

`docker run -d --cidfile=/root/.zola-test.cid -p 80:1111 -v /root/test_site:/zola-test -it getzola/zola-test serve`{{execute}}

At this point zola should be serving on port 80, but I am not getting anything back.

##### Get the logs from the container

`docker logs $(cat /root/.zola-test.cid)`{{execute}}

##### Execute Zola help

`docker exec -it $(cat /root/.zola-test.cid) zola help`{{execute}}
