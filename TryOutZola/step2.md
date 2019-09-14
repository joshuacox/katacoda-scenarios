## Run the container

`docker run -v /root/zola-test:/zola-test -it getzola/zola-test init zola-test`{{execute}}

`docker run -d --cidfile=/root/.zola-test.cid -v /root/zola-test:/zola-test -it getzola/zola-test serve`{{execute}}

`docker execute -it $(cat /root/.zola-test.cid) serve`{{execute}}
