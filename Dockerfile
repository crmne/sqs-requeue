FROM golang

RUN go get github.com/cstavro/sqs-requeue
RUN go build -o /usr/local/bin/sqs-requeue github.com/cstavro/sqs-requeue/cmd/sqs-requeue

ENTRYPOINT ["/usr/local/bin/sqs-requeue"]