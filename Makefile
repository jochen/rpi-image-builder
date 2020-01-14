all: build-rpi-builder build-rpi-docker-img build-rpi-creater create-rpi-img
.PHONY: all

build-rpi-builder:
	docker build -t raspbian-builder raspbian-builder

build-rpi-docker-img:
	docker run --rm --privileged -ti -v /var/run/docker.sock:/var/run/docker.sock raspbian-builder

build-rpi-creater:
	docker run --rm --privileged -ti raspbian-builder binfmts-enable-qemu-arm.sh
	docker build -t raspbian-creater raspbian-creater

create-rpi-img:
	docker run --rm --privileged -ti raspbian-builder binfmts-enable-qemu-arm.sh
	docker run --rm --privileged -ti -v $(shell pwd):/buildenv  raspbian-creater


