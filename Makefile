BINARY_NAME=./bin/main.exe

hello:
	echo "Hello"

build:
	go build -o bin/main.exe main.go

run:
	go run main.go

all: hello build

clean:
	go clean
	rmdir /s /q bin

format:
	gofmt -w main.go

lint:
	golangci-lint run

vet:
	go vet main.go