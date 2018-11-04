.PHONY: build run

build:
	docker build -t godwitlabs/xdc .

run:
	docker run --rm -it \
		-u `id -u` \
		-e DISPLAY \
		-v /tmp/.X11-unix:/tmp/.X11-unix:rw \
		-v /etc/localtime:/etc/localtime:ro \
		godwitlabs/xdc
