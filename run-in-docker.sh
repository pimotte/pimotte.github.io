#!/bin/sh

docker build -t my-ruby-app .
docker run -it --name my-running-script my-ruby-app
