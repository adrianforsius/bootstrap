#!/usr/bin/env bash

# If extra dependency is neede like python and ansible declare here

dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $dir

if [ -f ~/.extra ]; then
  source ~/.extra
fi

ansible-playbook -i playbooks/inventory playbooks/dotfiles.yml
