下载地址：https://golang.org/dl/

# windows:
## Install the Go tools
[安装及配置方法](https://golang.org/doc/install?download=go1.10.windows-amd64.msi)
## Test your installation
``` bash
$ cat test.go
package main

import "fmt"

func main(){
  fmt.Println("Hello,world!")
}

$ go run test.go
Hello,world!

```

# Linux
待补充

# Go 命令说明
- go build
- go run:编译并运行Go程序
- go install
- go clean
- go fmt
- go get:动态获取远程代码包
- go test
- go doc
- go version
- go env
- go list


# GoGetTools
https://github.com/golang/go/wiki/GoGetTools

# IDE推荐
- JetBrains GoLand(依赖JDK)
https://www.jetbrains.com/go/?fromMenu
- LiteIDE
- Eclipse
- Sublime Text
- Vim
- Emacs
