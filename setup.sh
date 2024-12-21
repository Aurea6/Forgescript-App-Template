#!/usr/bin/env bash

# colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
WHITE='\033[0;37m'
RESET='\033[0m'

# log timestamps
timestamp() { date +"%Y-%m-%d %H:%M:%S"; }

# creating configuration file
mkdir -p src
touch src/configuration.json

# starting setup process
echo -e "${BLUE}
    ███████╗███████╗████████╗██╗   ██╗██████╗ 
    ██╔════╝██╔════╝╚══██╔══╝██║   ██║██╔══██╗
    ███████╗█████╗     ██║   ██║   ██║██████╔╝
    ╚════██║██╔══╝     ██║   ██║   ██║██╔═══╝ 
    ███████║███████╗   ██║   ╚██████╔╝██║     
    ╚══════╝╚══════╝   ╚═╝    ╚═════╝ ╚═╝     
${RESET}"

echo -e "${GREEN}Welcome to the setup process for your project${RESET}"
echo -e "${YELLOW}All the dependencies will be installed automatically.${RESET}"
echo -e "${YELLOW}Eventually, you will be guided to type some information to fill the configuration file.${RESET}"
echo -e "${GREEN}Please note that what you type here is not uploaded to anywhere or seen by anyone except yourself!\n${RESET}"

# installing deps
echo -e "${BLUE}$(timestamp) :: Installing dependencies...${RESET}"
npm i github:tryforge/forgescript github:tryforge/forgedb sqlite3 
echo -e "${BLUE}$(timestamp) :: Finishing up...${RESET}"
npm cache clean --force
echo -e "${GREEN}$(timestamp) :: Successfully installed all the dependencies!${RESET}"

# beginning of config file setup
echo -e "${WHITE}Starting configuration file setup...${RESET}"
echo -e "${YELLOW}Info: currently you can only have one prefix!${RESET}"

# creating config file
read -p "App Token: " -e A
read -p "App Prefix: " -e B

cat > src/configuration.json << EOF
{
    "token": "${A}",
    "prefix": ["${B}"]
}
EOF

echo -e "\n${GREEN}$(timestamp) :: Successfully set up configuration file.${RESET}"
echo -e "${YELLOW}Keep this file safe in a local folder!${RESET}"
echo -e "${RED}Do not share this file to anyone!${RESET}"
