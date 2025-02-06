# Builder stage.
# Use golang `1.23-alpine for small size.`
FROM golang:1.23-alpine AS builder

# Work directory in `/app`.
WORKDIR /app

# Copy entire files.
COPY . .

# Run `go mod download` command for installing some dependencies.
RUN go mod download

# Build the app.
# The binary file will be storing in /app work directory.
RUN go build main.go


# Final stage.
# Use alpine:3 for running our application.
FROM alpine:3 AS prod

# Work directory in `/app`.
WORKDIR /app

# Copy binary file from `builder` stage.
COPY --from=builder /app/main .

# Running our application.
CMD ["./main"]
