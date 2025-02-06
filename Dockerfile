# Builder stage.
# Build the Go application.
FROM golang:1.23-alpine AS builder
WORKDIR /app
COPY . .
RUN go mod download
RUN go build main.go


# Final stage.
# It's only `main` file on this stage. So, the size will be decreased.
FROM alpine:3 AS prod
WORKDIR /app
COPY --from=builder /app/main .
CMD ["./main"]
