#!/usr/bin/env bash
touch src/configuration.json
echo -e "Welcome to setup process!"
echo -e "All the dependencies will be installed automatically."
echo -e "Eventually, you will be guided to type some information to fill the configuration file."
echo -e "Please note that what you type here is not uploaded to anywhere or seen by anyone except yourself!\n"
echo -e "Installing dependencies…"
npm i github:tryforge/forgescript github:tryforge/forgedb sqlite3 
echo -e "Finishing up…"
npm cache clean --force
echo -e "Successfully installed all the dependencies!"
echo -e "Starting configuration file setup…"
echo -e "Info: currently you can only have one prefix!"
> src/configuration.json
read -p "App Token: " -e A
read -p "App Prefix: " -e B
echo -e "{\ntoken=\"${A}\",\nprefix=[\"${B}\"]\n}" >> cnf.json
echo -e "\nSuccessfully set up configuration file."
echo -e "Keep this file safe in a lcoal folder!"
echo -e "Do not share this file to anyone!"
