default:

alpine rockylinux9 rockylinux8 centos7 centos6 trixie bookworm bullseye bullseye-slim:
	docker build --pull \
	  --build-arg http_proxy \
	  --tag dalibo/buildpack-python:$@ \
	  --file Dockerfile.$@ \
	.
