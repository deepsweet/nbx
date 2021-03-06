# nbx

[![npm](https://img.shields.io/npm/v/nbx.svg?style=flat-square)](https://www.npmjs.com/package/nbx) [![shellcheck](https://img.shields.io/travis/deepsweet/nbx/master.svg?label=shellcheck&style=flat-square)](https://travis-ci.org/deepsweet/nbx)

Execute package binaries.

* `yarn <command>` is a mess because it's trying to resolve a target from 3 (three) different places: yarn internal commands, npm scripts and `./node_modules/.bin/`
* `npx <command>` is doing too much, like checking in `$PATH` or autoinstalling a package if it's not found
* `./node_modules/.bin/` in `$PATH` is very implicit and even wider guess than `yarn <command>`
* shell aliases/functions are nice but not installable/shareable (?)
* `./node_modules/.bin/<command>` every time is just too verbose

## Install

```sh
$ yarn global add nbx
# or
$ npm install --global nbx
```

## Usage

```sh
$ nbx
One of the following binary names is required:
# …
```

```sh
$ nbx webpack --help
```

## Windows?

It probably just works if you are using that native "Linux in Windows" thing, `nbx` is just an extremely primitive Bourne Shell (or whatever compatible `/bin/sh` is) script.
