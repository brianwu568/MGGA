#!/bin/bash

# Check if a repo name was provided
if [ -z "$1" ]; then
  echo "Usage: $0 <repo-name>"
  exit 1
fi

REPO_NAME=$1

# Create directory, enter it, and initialize git
mkdir "$REPO_NAME"
cd "$REPO_NAME" || exit
git init

echo "Initialized new git repo in $REPO_NAME/"
