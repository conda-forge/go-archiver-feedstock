#!/bin/bash
export GOPATH="$SRC_DIR"

cd src/github.com/mholt/archiver
cd cmd/arc
go get -v .
go build

mkdir -p $PREFIX/bin
mv $GOPATH/bin/arc $PREFIX/bin
