from golang

run mkdir /opt/hello
workdir /opt/hello
run useradd -m -p poly poly
run chown -hR poly:poly /opt/hello

user poly

add index.html             /opt/hello/index.html
add hello-world.html       /opt/hello/my-components/hello-world/hello-world.html
add hello-world-style.html /opt/hello/my-components/hello-world/hello-world-style.html

add main.go /opt/hello/main.go
run go build -o hello main.go

cmd ["./hello"]
