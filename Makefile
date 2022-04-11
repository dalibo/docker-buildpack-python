all: centos7

alpine rockylinux8 centos8 centos7 centos6 bullseye buster stretch:
	docker build \
	  --build-arg http_proxy \
	  --tag dalibo/buildpack-python:$@ \
	  --file Dockerfile.$@ \
	.


push-%:
	docker push dalibo/buildpack-python:$*
