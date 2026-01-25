#!/bin/bash

BRANCH="deepracer"

if [ -f ~/physicar-cloud/.devcontainer/onCreateDev.sh ]; then
    bash ~/physicar-cloud/.devcontainer/onCreateDev.sh
else
    cd ~
    git clone -b "$BRANCH" --depth 1 https://${CODESPACES_PREBUILD_TOKEN}@github.com/physicar-ai/physicar-cloud-dev.git
    bash ~/physicar-cloud-dev/.devcontainer/onCreateProd.sh
fi
