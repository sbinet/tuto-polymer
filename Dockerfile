from golang

run apt-get update -y
run apt-get install -y --fix-missing \
	nodejs nodejs-legacy \
	npm git

run npm install -g bower

run mkdir /opt/hello
workdir /opt/hello

add bower.json /opt/hello/bower.json

run useradd -m -p poly poly
run chown -hR poly:poly /opt/hello

user poly

run bower install --save Polymer/polymer
run bower install --save polymerelements/paper-button
run bower install --save polymerelements/paper-toast

add index.html             /opt/hello/index.html
add hello-world.html       /opt/hello/my-components/hello-world/hello-world.html
add hello-world-style.html /opt/hello/my-components/hello-world/hello-world-style.html

add main.go /opt/hello/main.go
run go build -o hello main.go

cmd ["./hello"]

