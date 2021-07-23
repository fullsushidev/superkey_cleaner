all: build

build:
	go build .

tidy:
	go mod tidy

clean:
	go clean

run: build
	./superkey_cleaner

lint:
	go vet ./...
	golangci-lint run -E gofmt,gci,bodyclose,forcetypeassert,misspell

gci:
	golangci-lint run -E gci --fix

.PHONY: build run clean debug lint 
