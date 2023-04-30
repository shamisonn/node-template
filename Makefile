#!/usr/bin/env make

DOCKER_IMAGE_NAME := node-template

docker-build:
	docker image build -t $(DOCKER_IMAGE_NAME) .

docker-run:
	docker run -it $(DOCKER_IMAGE_NAME)