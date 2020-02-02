#!/bin/sh
export HOME=$WORKSPACE/stage
echo mkdir -p $HOME
PATH=$HOME/bin:$PATH

export BUILDROOT=$WORKSPACE/qwe
echo mkdir -p $BUILDROOT

echo ./setup-env init

echo make ${module}-${setupenv}

ls -la

env
