#!/bin/bash

git submodule init
git submodule update

IMAGE=singularity-matlabmcr2017a.simg
DEFINITION=Singularity

if [ -f $IMAGE ]; then
	rm -fv $IMAGE
fi

singularity image.create -s 2000 $IMAGE
sudo singularity build $IMAGE $DEFINITION
