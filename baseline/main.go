package main

import (
	"baseline/subpackage"
)

func main() {
	println("I'm Main Package")

	subpackage.Submodule1Run()
	subpackage.Submodule2Run()
}
