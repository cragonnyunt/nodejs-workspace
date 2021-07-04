# Nodejs Workspace

[![Nodejs Workspace CI latest](https://github.com/cragonnyunt/nodejs-workspace/actions/workflows/main.yml/badge.svg?branch=latest)](https://github.com/cragonnyunt/nodejs-workspace/actions/workflows/main.yml)

[![Nodejs Workspace CI lts](https://github.com/cragonnyunt/nodejs-workspace/actions/workflows/main.yml/badge.svg?branch=lts)](https://github.com/cragonnyunt/nodejs-workspace/actions/workflows/main.yml)

Nodejs Workspace Docker is built on top of the [development workspace docker](https://github.com/cragonnyunt/development-workspace). It contains the most used tools for Nodejs developers, and prepare environment configuration for developing nodejs apps and websites.

Set of tools installed
- Everything installed on [development workspace docker](https://github.com/cragonnyunt/development-workspace)
- Node
- NPM

## Pulling the image

```
docker pull cragonnyunt/nodejs-workspace-docker:<<tag>>
```

## Running the image

```
docker run --rm -it \
    -v $(pwd):/workspace \
    cragonnyunt/nodejs-workspace-docker:<<tag>>
```

## nodejs-workspace-docker:latest

This version contains the current version of node (up-to-date) binary.

## nodejs-workspace-docker:latest

This version contains the lts version of node binary.
