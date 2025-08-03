#!/bin/bash

# Check if a repo name was provided
if [ -z "$1" ]; then
  echo "Usage: $0 <repo-name>"
  exit 1
fi

REPO_NAME=$1

REPO_DIR="$HOME/$REPO_NAME"
cd "$REPO_DIR" || exit

# Random number of commits between 5 and 15
NUM_COMMITS=$(( ( RANDOM % 11 )  + 5 ))

for ((i=1; i<=NUM_COMMITS; i++))
do
  echo "$(date) - Commit $i" >> activity.log
  git add activity.log
  GIT_COMMITTER_DATE="$(date)" git commit --date="$(date)" -m "chore: dummy commit $i"
done

git push origin main

