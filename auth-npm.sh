#!/bin/bash
if [ -z "$GITHUB_TOKEN" ]; then
    echo "Error: GITHUB_TOKEN environment variable is not set."
    exit 1
fi
if [ -z "$GIT_USER" ]; then
    echo "Error: GIT_USER environment variable is not set."
    exit 1
fi

echo "//npm.pkg.github.com/:_authToken=$GITHUB_TOKEN" > .npmrc
echo "@$GIT_USER:registry=https://npm.pkg.github.com/" >> .npmrc

echo "MSG: The file .npmrc created with token and git_user from env variable."
echo " " >> .gitignore
echo "# NPM Configuration file" >> .gitignore
echo ".npmrc" >> .gitignore

echo "WARNING: Ensure, that .npmrc file is added to .gitignore."
