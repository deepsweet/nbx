#!/bin/sh

BIN_DIR='./node_modules/.bin/'

if [ ! -d "$BIN_DIR" ]; then
  echo "\"$BIN_DIR\" directory is not found"
  exit 1
fi

if [ $# -eq 0 ]; then
  echo 'One of the following binary names is required:'
  ls "$BIN_DIR"
  exit 1
fi

if [ $(expr "$1" : "^[^a-zA-Z_]*$") -gt 0 ]; then
  echo 'Binary name should contain only letters or underscore'
  exit 1
fi

BIN_FILE="$BIN_DIR""$1"

if [ ! -h "$BIN_FILE" ]; then
  echo "\"$BIN_FILE\" is not found"
  exit 1
fi

exec "$BIN_FILE" "${@:2}"
