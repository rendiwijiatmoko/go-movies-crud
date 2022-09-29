FROM golang:1.19.1-bullseye

WORKDIR /app

COPY go.mod ./
COPY go.sum ./

RUN go mod download

COPY *.go ./

CMD ["go", "run", "/app/main.go"]
