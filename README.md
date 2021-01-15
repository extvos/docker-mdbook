# docker-mdbook

Dockerfile to build a container image enclosing [mdBook](https://github.com/azerupi/mdBook).

## Usage

``` shell
cd /path/to/book
docker run --rm -v $(pwd):/data -u $(id -u):$(id -g) -it extvos/mdbook mdbook init
docker run --rm -v $(pwd):/data -u $(id -u):$(id -g) -it extvos/mdbook mdbook build
docker run --rm -p 3000:3000 -p 3001:3001 -v $(pwd):/data -u $(id -u):$(id -g) -it extvos/mdbook mdbook serve -p 3000 -n 0.0.0.0
```

When you run these command, the book is served at http://localhost:3000 .
