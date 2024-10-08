# npm-registry

## Setup

Run [Verdaccio](https://verdaccio.org/) in a docker container:

```sh
docker run -it --rm --detach --name local-npm-registry \
    -p 4873:4873 \
    -v $(pwd)/conf:/verdaccio/conf \
    -v $(pwd)/plugins:/verdaccio/plugins \
    -v $(pwd)/storage:/verdaccio/storage \
    verdaccio/verdaccio
```

_Note: You can also run the `run.sh` script._

## Usage

Login (Adds the user if it does not exist):

```sh
npm login --registry http://localhost:4873
```

Publish packages:

```sh
npm publish --registry http://localhost:4873
```

(Optional) Create token (login required):

```sh
npm token create
```

(Optional) Setup up an `.npmrc` in your projects:

```
registry=http://localhost:4873
```

alternatively with token:

```
registry=http://localhost:4873
//localhost:4873/:_authToken=<MYTOKEN>
```
