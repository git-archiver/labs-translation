#!/bin/bash

set -e

output() {
  color="32"
  if [ "$2" = 1 ]; then
    color="31"
  fi
  printf "\033[${color}m"
  echo $1
  printf "\033[0m"
}

git add .
! git commit -m "🤖 auto(pot): labs-web Bamboo extract po"

if [ $? -eq 0 ]; then
  output "Nothing to push server."
fi
