#!/bin/bash

set -e

if [ "$1" = "clean" ]; then
  rm -rf libs obj club 2>/dev/null
  rm -rf jni/club 2>/dev/null
  exit
fi

if [ -d jni/club ]; then
  (cd jni/club; git pull)
else
  git clone git://github.com/inetic/club jni/club
fi

ndk-build

