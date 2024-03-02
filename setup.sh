#!/bin/bash

# Set an environment variable in /root/.bash_profile
## Create variable for environemnt value
username_command="export GITHUB_USERNAME=Broski-AC"

## Check if file exists; if not, create
if [[ ! -e ~/root/.bash_profile ]];
then
    mkdir -p ~/root
    touch ~/root/.bash_profile
    chmod +rw ~/root/.bash_profile
fi

## Add username_command value to file
### This will overwrite existing info in the file; if we wanted to append, use >>
echo "$username_command" > ~/root/.bash_profile

# Write code to a file called config.hcl, replacing variable <HOSTNAME> with vault-server.hashicorp.com