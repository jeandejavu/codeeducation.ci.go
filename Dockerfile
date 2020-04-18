FROM golang:1.14.2-alpine3.11 AS builder

COPY ./src/ /home

WORKDIR /home

RUN go build -o soma-go.sh

FROM scratch

COPY --from=builder /home/soma-go.sh /home/soma-go.sh

CMD ["./home/soma-go.sh"]

