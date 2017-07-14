#!/bin/bash

while true
do
    if [[ $(git status | diff utd -) ]]; then
        git add .
        git commit -m auto-commit
        git push
    else
        echo all cool
    fi

    if [[ $(git fetch) ]]; then
        git merge
    fi

    sleep 30s
done
