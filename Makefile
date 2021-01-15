all: build

build:
	@docker build -t extvos/mdbook:latest .

release: build
	@docker build -t extvos/mdbook:$(shell cat Dockerfile | \
		grep "ARG MDBOOK_VERSION" | \
		sed -e 's/[^"]*"\([^"]*\)".*/\1/') .
