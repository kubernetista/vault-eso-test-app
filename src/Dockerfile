FROM golang:1.21-alpine3.18 AS build-env

WORKDIR /tmp/workdir

COPY . .

RUN CGO_ENABLED=0 GOOS=linux go build

FROM alpine:3.18

EXPOSE 8080

RUN apk add --no-cache ca-certificates bash

COPY --from=build-env /tmp/workdir/vault-eso-test-app /app/vault-eso-test-app

COPY credentials /secrets/credentials

WORKDIR /app

CMD ["./vault-eso-test-app"]
