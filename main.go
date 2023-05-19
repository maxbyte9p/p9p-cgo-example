package main

/*
#include <u.h>
#include <libc.h>

void
myprint(char* s)
{
	print("%s\n", s);
	exits(0);
}
*/
import "C"

import "unsafe"

func Example() {
	cs := C.CString("This is a demo of using the P9P C libraries with Cgo.")
	defer C.free(unsafe.Pointer(cs))
	C.myprint(cs)
}

func main() {
	Example()
}
