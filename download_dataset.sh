#!/usr/bin/env bash

# Copyright (c) Facebook, Inc. and its affiliates.
# This source code is licensed under the Creative Commons license found in the
# LICENSE file in the root directory of this source tree.

WEIGHT_DIRECTORY="downloaded_data"


if ! mkdir ${WEIGHT_DIRECTORY} 2>/dev/null; then
    echo ${WEIGHT_DIRECTORY} "directory already exists. Please specify a non-existing directory just to be safe."
    exit
fi
cd ${WEIGHT_DIRECTORY}
echo "Downloading"
wget https://dl.fbaipublicfiles.com/splitnet/splitnet_dataset.tar.gz
echo "Unzipping"
tar -zxf splitnet_dataset.tar.gz
mv splitnet_dataset/* .
rm -rf splitnet_dataset
rm -rf splitnet_dataset.tar.gz
echo "Success"
cd ..

