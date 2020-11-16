all: fmt
	go test ./...

fmt: goimports go.mod
	goimports -d -w .
	go mod tidy

goimports:
	go install golang.org/x/tools/cmd/goimports

go.mod:
	go mod init github.com/sugardon/grpc-echo
