#!/bin/bash

while true
do

    if [[ $(git fetch) ]]; then
        git merge -m auto-pull

    elif [[ $(git status | diff utd -) ]]; then
        git add .
        git commit -m auto-commit
        git push
    else
        echo all cool
    fi

    sleep 30s
done
