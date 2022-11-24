name = kube-hello-app
tag = wschaefer42
version = v1
image = ${tag}/${name}:${version}

all: docker-build docker-push k8s-deploy

docker-build:
	docker build -t ${image} .

docker-push:
	docker push ${image}

k8s-deploy:
	ansible-playbook playbook.yml -e image_id=${image}
