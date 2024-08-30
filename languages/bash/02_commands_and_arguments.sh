#!/usr/bin/env bash

read -p "Your name?" name
if [[ $name = $USER ]]; then
  echo "Lets master the craft"
else
  echo "you are not $USER. Goodbye!"
fi
