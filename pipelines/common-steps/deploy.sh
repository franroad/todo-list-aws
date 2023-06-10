#!/bin/bash

set -x
du -hs * | sort -h
sam deploy template.yaml --config-env ${ENVIRONMENT} --no-confirm-changeset --force-upload --s3-bucket aws-sam-cli-managed-default-samclisourcebucket-60dq2bphodjw --no-fail-on-empty-changeset --no-progressbar
