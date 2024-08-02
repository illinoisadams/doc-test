#!/bin/bash -e
# Copyright 2024 The Board of Trustees of the University of Illinois

pfx="xghcr.io/iti/pcesapps"
pfx="ghcr.io/illinoisadams/doc-test"

now=$(date -u +%F-%H-%M-%S)
tag=${1:-"$pfx-test"}
latest=${1:+"latest"}

docker build --no-cache -t "$tag:$now" .
docker push "$tag:$now"
for v in $latest ; do
	docker tag "$tag:$now" "$tag:latest"
	docker push "$tag:latest"
done
