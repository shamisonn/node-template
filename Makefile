#!/usr/bin/env make

DOCKER_IMAGE_NAME := node-template

install-dependencies-by-brew:
	cp -i .env.sample .env || :
	brew install direnv
	direnv allow
	brew install volta
	brew install act

run-actions-test:
	act pull_request

docker-build:
	docker image build -t $(DOCKER_IMAGE_NAME) .

docker-run:
	docker run -it $(DOCKER_IMAGE_NAME) --env-file .env
