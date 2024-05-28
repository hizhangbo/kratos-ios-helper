set CGO_ENABLED=0
set CC=D:\go-sdk\go1.21.3\misc\ios\clangwrap.sh
set GOARCH=arm64
set GOOS=darwin

go build -ldflags -w -o kratos-ios-helper ../cmd/kratos-ios-helper/main.go