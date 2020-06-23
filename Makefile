.PHONY:	build push

PREFIX = pytimer
IMAGE = elasticsearch
TAG = 7.7.1-k8s

build:
	docker build --tag ${PREFIX}/${IMAGE}:${TAG} .

push:
	docker push ${PREFIX}/${IMAGE}:${TAG}
