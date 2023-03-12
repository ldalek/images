#!/bin/bash

if [ "$1" == "build" ] ; then
	set -e

	export DEBIAN_FRONTEND="noninteractive"
	export TZ="Etc/UTC"

	apt-get -y update
	apt-get -y install \
		make \
		python-is-python3 \
		virtualenv

	# Install latest sphinx package
	virtualenv /sphinx
	. /sphinx/bin/activate
	python3 -m pip install --upgrade pip
	python3 -m pip install --upgrade sphinx sphinx-rtd-theme

	# Remove unneeded stuff
	rm -rf /var/lib/apt /var/lib/dpkg
else
	. /sphinx/bin/activate
	exec $@
fi
