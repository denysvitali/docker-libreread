FROM golang:1.9-alpine3.7
RUN apk update && apk add git gcc musl-dev
RUN git clone https://github.com/LibreRead/server/ /go/src/libreread
WORKDIR /go/src/libreread
RUN go get ./...
ENTRYPOINT go run cmd/server/main.go