#!/bin/sh
export HOME=$WORKSPACE/stage
mkdir -p $HOME
PATH=$HOME/bin:$PATH

export BUILDROOT=$WORKSPACE/qwe
mkdir -p $BUILDROOT

./setup-env init

make ${module}-${setupenv}
