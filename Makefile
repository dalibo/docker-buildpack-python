all:

alpine rockylinux9 rockylinux8 centos7 centos6 bullseye buster stretch:
	docker build \
	  --build-arg http_proxy \
	  --tag dalibo/buildpack-python:$@ \
	  --file Dockerfile.$@ \
	.

push-%:
	docker push dalibo/buildpack-python:$*
