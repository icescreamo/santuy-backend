FROM golang:1.23.2-alpine3.20

WORKDIR /app
COPY * ./

ENV GO111MODULE=on
ENV GOFLAGS=-mod=vendor

RUN CGO_ENABLED=0 GOOS=linux go build -o /main

EXPOSE 9000

CMD ["/main"]
