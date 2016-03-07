The atomiq image is based on the official [Node.js image](https://hub.docker.com/_/node/) ([GitHub](https://github.com/nodejs/docker-node)). Use the official Node image if you just need a Node runtime environment; use this image as a base image for `onbuild` support for new images.

### Features

 * Installs node-inspector and exposes it on port 8080
 * Executes onbuild triggers to copy your sources to `/usr/src/app`

### Use in your own Dockerfile

    FROM atomiq/node[:tag-onbuild]

    # Expose ports as needed
    EXPOSE 3000

### Tags

* 5.7.1-onbuild, 5.7-onbuild, 5-onbuild, onbuild ([5.7/onbuild/Dockerfile](https://github.com/atomiqio/docker-node/blob/master/5.7/onbuild/Dockerfile))
* 4.3.2-onbuild, 4.3-onbuild, 4-onbuild ([4.3/onbuild/Dockerfile](https://github.com/atomiqio/docker-node/blob/master/4.3/onbuild/Dockerfile))
