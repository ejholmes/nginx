.PHONY: build push

build:
	docker build -t ejholmes/nginx .

push:
	docker push ejholmes/nginx:latest
