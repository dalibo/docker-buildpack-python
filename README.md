# [dalibo/buildpack-python](https://hub.docker.com/r/dalibo/buildpack-python)

Buildpack image for development for Python PostgreSQL tools :

- based on [dalibo/buildpack](https://github.com/dalibo/docker-buildpack)
- python2, pip, setuptools, wheel.
- python3, pip, setuptools, wheel.
- flake8, pytest, virtualenv.
- poetry.
- ldapsearch and friends


## Tags

- `centos8` with Python 2.7, 3.6 and 3.8.
- `centos7` with Python 2.7 and 3.6.
- `centos6` with Python 2.6.
- `bullseye` with Python 3.9 inludes pyright.
- `buster` with Python 2.7 and 3.7.


## Python 2.6

CentOS 6 ships Python 2.6 which is quite old. `centos6` images provides most
updated pip, wheel and setuptools for Python2.6. However, Python 2.6 SSL is
known to not support SNI extension which is now mandatory for PyPI. A script
named `pip26-install` allows to workaround this limitation by installing a list
of URL of packages. See Dockerfile.centos6 for an example usage.

