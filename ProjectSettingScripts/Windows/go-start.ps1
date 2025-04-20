param (
    [string]$ProjectName
)

if (-not $ProjectName) {
    Write-Host "Usage: .\init-go-project.ps1 <project-name>"
    exit 1
}

# 디렉토리 생성
New-Item -ItemType Directory -Path $ProjectName\pkg -Force | Out-Null
Set-Location $ProjectName

# go.mod 생성
go mod init $ProjectName

# main.go 생성
@"
package main

import "fmt"

func main() {
    fmt.Println("Hello, $ProjectName!")
}
"@ | Set-Content main.go

Write-Host "Go project '$ProjectName' initialized!"
