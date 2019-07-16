FROM golang:1.12.7-alpine

WORKDIR /go/src/basic-go-server
COPY . .

RUN go-wrapper download
RUN go-wrapper install

EXPOSE 8080

CMD ["go-wrapper", "run"]