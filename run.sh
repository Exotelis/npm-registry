#!/bin/bash

docker run -it --rm --detach --name local-npm-registry \
    -p 4873:4873 \
    -v $(pwd)/conf:/verdaccio/conf \
    -v $(pwd)/plugins:/verdaccio/plugins \
    -v $(pwd)/storage:/verdaccio/storage \
    verdaccio/verdaccio
