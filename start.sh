#!/usr/bin/env bash
touch cnf.json
echo -e "Starting your discord application…"
echo -e "Updating dependencies…"
npm i
echo -e "Cleaning up…"
npm cache clean --force
echo -e "Successfully updated all the dependencies!"
echo -e "Loading extensions and commands…"
node src/main.js
