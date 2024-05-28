export CGO_ENABLED=1
export SDK=iphoneos
export CC=/usr/local/go/misc/ios/clangwrap.sh
export GOARCH=arm64
export GOOS=ios

chmod +x deb/DEBIAN/*

go build -o ./deb/usr/bin/KratosKeepAlive ../cmd/kratos-ios-helper/main.go

#解决 trying to overwrite '/.DS_Store'
find ./deb -name '.DS_Store' -type f -delete

#配置文件
cp ../configs/config.yaml ./deb/usr/bin/configs/

dpkg-deb -bZ gzip ./deb ./kratos_keep_alive.deb