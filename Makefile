.PHONY: all run build

all: build

build:
	@docker build --tag=polymer .

run: build
	@docker run --rm -p 8080:8080 polymer
