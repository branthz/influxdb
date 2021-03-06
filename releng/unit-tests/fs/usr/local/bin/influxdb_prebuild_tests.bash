#!/bin/bash

# Extract tarball into GOPATH.
tar xz -C "$GOPATH" -f /influxdb-src.tar.gz

cd "$GOPATH/src/github.com/branthz/influxdb"
go test -v ./... 2>&1 | tee /out/tests.log | go-junit-report > /out/influxdb.junit.xml
