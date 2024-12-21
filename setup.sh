#!/usr/bin/env bash
# colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
WHITE='\033[0;37m'
RESET='\033[0m'
# log timestamps
timestamp() { date +"%Y-%m-%d %H:%M:%S" }
# creating configuration file
touch src/configuration.json
# starting setup process
echo -e "
                       /$$                        
                      | $$                        
  /$$$$$$$  /$$$$$$  /$$$$$$   /$$   /$$  /$$$$$$ 
 /$$_____/ /$$__  $$|_  $$_/  | $$  | $$ /$$__  $$
|  $$$$$$ | $$$$$$$$  | $$    | $$  | $$| $$  \ $$
 \____  $$| $$_____/  | $$ /$$| $$  | $$| $$  | $$
 /$$$$$$$/|  $$$$$$$  |  $$$$/|  $$$$$$/| $$$$$$$/
|_______/  \_______/   \___/   \______/ | $$____/ 
                                        | $$      
                                        | $$      
                                        |__/      
"
echo -e "${GREEN}Welcome to the setup process for your project"
echo -e "${YELLOW}All the dependencies will be installed automatically."
echo -e "${YELLOW}Eventually, you will be guided to type some information to fill the configuration file."
echo -e "${GREEN}Please note that what you type here is not uploaded to anywhere or seen by anyone except yourself!\n"
# installing deps
echo -e "${BLUE}$(timestamp) :: Installing dependencies…"
npm i github:tryforge/forgescript github:tryforge/forgedb sqlite3 
echo -e "${BLUE}$(timestamp) :: Finishing up…"
npm cache clean --force
echo -e "${GREEB}$(timestamp) :: Successfully installed all the dependencies!"
# beginning of config file setup
echo -e "${WHITE}Starting configuration file setup…"
echo -e "${YELLOW}Info: currently you can only have one prefix!"
# creating config file
> src/configuration.json
# getting data from user
read -p "App Token: " -e A
read -p "App Prefix: " -e B
echo -e "{\ntoken=\"${A}\",\nprefix=[\"${B}\"]\n}" >> configuration.json
echo -e "\n${GREEN}$(timestamp) :: Successfully set up configuration file."
echo -e "${YELLOW}Keep this file safe in a lcoal folder!"
echo -e "${RED}Do not share this file to anyone!"
