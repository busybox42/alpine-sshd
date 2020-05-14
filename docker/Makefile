IMAGE=alpine-sshd

.PHONY: all build

all: build

build:
	docker build --network=host --rm -t $(IMAGE) .
