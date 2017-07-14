#!/bin/bash

while true
do
    if [[ $(git status | diff utd -) ]]; then
        git add .
        git commit -m auto-commit
        git remote set-url origin https://throwaway951:rugrats1@github.com/throwaway951/parameter_sync.git
        git push
    else
        echo all cool
    fi

    if [[ $(git fetch) ]]; then
        git merge
    fi

    sleep 30s
done