#!/usr/bin/env bash

node_version=8.9.0-wheezy

docker run  \
    --user="$(id -u):$(id -g)" \
	-v $HOME:/home \
    -e "HOME=/home/" \
	-e "http_proxy=${http_proxy}" \
	-e "https_proxy=${https_proxy}" \
	-e "no_proxy=${no_proxy}" \
	-e "AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID}" \
	-e "AWS_ACCOUNT_NAME=${AWS_ACCOUNT_NAME}" \
	-e "AWS_ASSUMED_ROLE=${AWS_ASSUMED_ROLE}" \
	-e "AWS_EXPIRATION_DATE=${AWS_EXPIRATION_DATE}" \
	-e "AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY}" \
	-e "AWS_SECURITY_TOKEN=${AWS_SECURITY_TOKEN}" \
	-e "AWS_SESSION_TOKEN=${AWS_SESSION_TOKEN}" \
	-e "AWS_VALID_SECONDS=${AWS_VALID_SECONDS}" \
	-v $PWD:/app \
	--workdir /app \
	--rm \
	node:${node_version} \
	bash -c "$@"
