
start: create-nw start-redis start-wass

stop: stop-wass stop-redis rm-nw

###
create-nw:
	sudo docker network create my-network  

start-redis: create-nw
	sudo docker run -p 6379:6379 --net my-network \
	 --hostname "redis" --name some-redis -d redis

start-wass: start-redis
	./wass.sh	

###
stop-wass:
	sudo docker stop wass && sudo docker rm wass

stop-redis: stop-wass
	sudo docker stop some-redis && sudo docker rm some-redis

rm-nw: stop-redis
	sudo docker network rm my-network  

###
start-grid:
	sudo docker run --name grid -it -v ./gridding:/app/gridding -v ./output:/app/output -v ./frames:/app/frames ykomai/gridding:latest /bin/bash
stop-grid:
	sudo docker stop grid && sudo docker rm grid 

###
cnt:
	sudo docker ps -all

img:
	sudo docker image ls

###
data:
	rm 


