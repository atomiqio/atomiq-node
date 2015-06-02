# atomiq-microservice-images

The atomiq base image is based on [iojs](https://registry.hub.docker.com/_/iojs/) ([GitHub](https://github.com/nodejs/docker-iojs)).

To use, cd to the `onbuild` directory and run `./build.sh` to build the image on your Docker host.

In your app directory root, create a `Dockerfile`:

```
FROM atomiq:onbuild

# Expose service port
EXPOSE 3000
```

Then run:

```
$ docker build -t app
$ docker run --rm -it app
```


