#!/bin/bash
set -ex
if [ $# -ne 1 ]; then
  echo "Usage: $0 <path-to-master-clone>"
  exit 1
fi
(cd $1; make)
HASH=$(cd $1; git rev-parse --short HEAD)
git rm -r --ignore-unmatch index.html lecture_files/
cp $1/lecture.html index.html
cp -a $1/lecture_files .
git add index.html
git add lecture_files/
git commit -m "[gh-pages] Update from $HASH"
