#!/bin/sh

docker run --rm -v "$PWD":/usr/src/app -w /usr/src/app ruby:2.7 bundle install