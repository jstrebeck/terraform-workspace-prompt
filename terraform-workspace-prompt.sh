#!/usr/bin/env bash

function terraform_prompt()
{
    if [ -d .terraform ]; then
        workspace="$(command terraform workspace show 2>/dev/null)"
        echo "${workspace}$fg[red]|"
    fi
}