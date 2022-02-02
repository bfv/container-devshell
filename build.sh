#!/bin/bash

# without arguments you build latest
if [[ -n "$1" ]]; then
    tag=$1
else
    tag=latest
fi

docker build -t devbfvio/devshell:$tag .
docker push devbfvio/devshell:$tag 

if [[ $# -gt 1 ]]; then 
    for copy in "$@" 
    do
        if [[ "$tag" != "$copy" ]]; then
            echo tagging $copy
            docker tag devbfvio/devshell:$tag devbfvio/devshell:$copy
            docker push devbfvio/devshell:$copy
        fi
    done
fi

all="$@"
echo build and tagged: ${all// /, }
