## Run the container

`docker run -it getzola/zola-test init zola-test`{{execute}}

`docker run -v /root/test_site:/zola-test -it getzola/zola-test build`{{execute}}

`docker run -d --cidfile=/root/.zola-test.cid -v /root/test_site:/zola-test -it getzola/zola-test serve`{{execute}}

`docker exec -it $(cat /root/.zola-test.cid) zola help`{{execute}}
