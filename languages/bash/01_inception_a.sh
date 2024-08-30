#!/usr/bin/env bash

# To find out whether or not your terminal is currently running a nash shell let's try running the following:
echo "bash version - $BASH_VERSION"

echo "How are you doing today $USER?"
read response
if [[ $response = ready ]]; then
  echo "perfect let's master our craft!"
else
  echo "let me know when you are ready to h4ck th3 pl4net"
fi
