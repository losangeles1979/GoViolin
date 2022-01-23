# syntax=docker/dockerfile:1

FROM golang:1.15-alpine

WORKDIR /app

COPY go.sum ./
COPY go.mod ./
RUN go mod download
# RUN go mod tidy
RUN go mod vendor
RUN apk add git

# We need not only all of the *.go files
# but index.html, css folder, templates folder, the works!
COPY *.* ./

# Download all the dependencies
RUN go get -d -v ./...

# RUN go build -o docker-news-app

RUN go install -v ./...
COPY GoViolin.exe ./
EXPOSE 8080
CMD [ "./GoViolin.exe" ]
