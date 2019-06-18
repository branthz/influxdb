package storage

//go:generate protoc -I$GOPATH/src/github.com/branthz/influxdb/vendor -I. --gogofaster_out=. source.proto
