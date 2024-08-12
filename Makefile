SHELL=/bin/bash

# get current user/group
UID := $(shell id -u)
GID := $(shell id -g)

# generate one billion row data file in PWD
measurements-image-build:
	docker build -t create_1brc_measurements -f create_measurements.Dockerfile .

measurements-image-run:
	docker run --rm --user ${UID}:${GID} -v "${PWD}:/output" create_1brc_measurements

measurements:
	make measurements-image-build && make measurements-image-run

