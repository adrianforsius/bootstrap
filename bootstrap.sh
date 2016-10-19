#!/usr/bin/env bash

# If extra dependency is neede like python and ansible declare here

dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $dir

source .extra
cp .extra ~/.extra

ansible-playbook -i playbooks/inventory playbooks/dotfiles.yml
