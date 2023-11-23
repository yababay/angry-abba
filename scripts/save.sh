#!/bin/bash

if [ -z "`git branch | grep settings`" ]; then
    git switch --orphan settings
else
    git checkout settings
fi

git checkout main -- .gitignore
git checkout main -- src/routes/+layout.scss
git checkout main -- src/routes/+layout.svelte
git checkout main -- src/app.scss
git checkout main -- src/app.json
git checkout main -- static/background.png
git checkout main -- static/fonts
git checkout main -- package.json

