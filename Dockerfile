FROM golang:1.17.1

RUN mkdir /app

ADD . /app

WORKDIR /app

RUN go build -o main ./cmd/server/main.go

EXPOSE 8080

CMD ["/app/main"]