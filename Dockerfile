FROM golang:1.12.7-alpine

WORKDIR /go/src/yuruben
COPY . .

RUN go get -d -v github.com/bokuwakuma/yuruben
RUN go install -v github.com/bokuwakuma/yuruben

EXPOSE 8080

CMD [ "yuruben" ]