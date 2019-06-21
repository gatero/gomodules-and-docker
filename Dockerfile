FROM golang:1.12.6
MAINTAINER @gatero <me@daniel-ortega.mx>
WORKDIR /go/src/app
RUN go get -d -v github.com/markbates/refresh && \
    go install -v github.com/markbates/refresh
CMD ["refresh", "run"]
