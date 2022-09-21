#!/usr/bin/env bash


IMAGE_NAME="usbrelay-build:latest"

set -euo pipefail
docker build -t "${IMAGE_NAME}" .
docker run --rm -v $(pwd):/build "${IMAGE_NAME}"
