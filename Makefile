name = kube-hello-app
tag = wschaefer42
version = v1
image = ${tag}/${name}:${version}

all: docker-build docker-push

docker-build:
	docker build -t ${image} .

docker-push:
	docker push ${image}