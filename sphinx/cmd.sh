#!/bin/bash

export DEBIAN_FRONTEND="noninteractive"
export TZ="Etc/UTC"

apt-get -y update
apt-get -y install \
	python-is-python3 \
	python3-sphinx python3-sphinx-rtd-theme
