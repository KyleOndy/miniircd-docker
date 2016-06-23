IMAGE=kyleondy/miniircd
TAG=latest

.PHONY: build
build:
	docker build -t $(IMAGE):$(TAG) ./image

.PHONY: run
run: build
	docker run --name ircd -p 6667:6667 --rm -it $(IMAGE)
