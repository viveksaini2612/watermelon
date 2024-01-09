# Official go lang image
FROM golang:latest

# Set directory
WORKDIR /app

# Copy files to the container
COPY . .

# Change directory to the apclog folder and build the Go application
RUN cd /app/apclog/ && \
pwd && \
ls && \
go build

# Expose the port
EXPOSE 8080

# Set execute permissions
WORKDIR /app/apclog
RUN chmod +x ./gen.sh

# Command
CMD [ "./gen.sh", "1024", "7", "12", "/logs/apache/"]
