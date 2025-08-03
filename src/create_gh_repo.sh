#!/bin/bash

# Check if a repo name was provided
if [ -z "$1" ]; then
  echo "Usage: $0 <repo-name>"
  exit 1
fi

REPO_NAME=$1

gh repo create "$REPO_NAME" --private --source=. --remote=origin --push
