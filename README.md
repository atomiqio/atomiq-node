# atomiq-node

`atomiq-node` is based on latest version of [mhart/alpine-node] and provides an
opinionated selection of packages optimized as a base image for building atomiq
microservices.

## Features

 * Installs node-inspector and exposes it on port 8080
 * Executes onbuild triggers to copy your sources to `/usr/src/app`

## Use in your own Dockerfile

    FROM atomiq/node[:VERSION-onbuild]

    # Expose ports as needed
    EXPOSE 3000

## Tags

* 6-onbuild, 6.2-onbuild, 6.2.1-onbuild, latest-onbuild ([6.2/onbuild/Dockerfile](https://github.com/atomiqio/atomiq-node/blob/master/6.2/onbuild/Dockerfile))



[mhart/alpine-node]:       https://github.com/mhart/alpine-node       "mhart/alpine-node"
