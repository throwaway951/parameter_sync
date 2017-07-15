#!/bin/bash

while true
do

    if [[! $(git fetch -v --dry-run 2>&1 >/dev/null | grep 'up to date') ]]; then
        git pull

    elif [[ $(git status | diff utd -) ]]; then
        git add .
        git commit -m auto-commit
        git push
    else
        echo nothing to do 
    fi

    sleep 30s
done
