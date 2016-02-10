package main

import (
	"flag"
	"net/http"
)

func main() {
	var addr string
	flag.StringVar(&addr, "addr", ":8080", "server addr:port")
	flag.Parse()

	http.ListenAndServe(addr, http.FileServer(http.Dir("./rootfs")))
}
