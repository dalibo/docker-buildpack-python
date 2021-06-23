# [dalibo/buildpack-python](https://hub.docker.com/r/dalibo/buildpack-python)

Buildpack image for development for Python PostgreSQL tools :

- based on [dalibo/buildpack](https://github.com/dalibo/docker-buildpack)
- python2, pip and flake8
- python3, pip and flake8
- ldapsearch and friends
- poetry


## Tags

- `centos8`.
- `centos7`.
- `centos6`.
- `bullseye`, inludes pyright.
- `buster`.


## Python 2.6

CentOS 6 ships Python 2.6 which is quite old. `centos6` images provides most
updated pip, wheel and setuptools for Python2.6. However, Python 2.6 SSL is
known to not support SNI extension which is now mandatory for PyPI. A script
named `pip26-install` allows to workaround this limitation by installing a list
of URL of packages. See Dockerfile.centos6 for an example usage.

