# docker-java - a Docker container having Oracle Java JDK

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-java/

# EXAMPLE

```
$ make
docker run --rm mcandre/docker-java javac -version
javac 1.9.0-ea
```

# REQUIREMENTS

* [Docker](https://www.docker.com/)

## Optional

* [make](http://www.gnu.org/software/make/)
* [Node.js](https://nodejs.org/en/) (for dockerlint)
* [editorconfig-cli](https://github.com/amyboyd/editorconfig-cli) (e.g. `go get github.com/amyboyd/editorconfig-cli`)
* [flcl](https://github.com/mcandre/flcl) (e.g. `go get github.com/mcandre/flcl/...`)
