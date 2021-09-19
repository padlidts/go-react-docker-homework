FROM golang:alpine
WORKDIR /app-be
COPY . .

ENV DB_USER="root"
ENV DB_PASS=""
EXPOSE 8080
RUN go build -o /go-server

CMD ["/go-server"]