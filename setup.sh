#!/bin/bash

# Set an environment variable in /root/.bash_profile
function setup_env {
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
    return
}

# Write code to a file called config.hcl, replacing variable <HOSTNAME> with vault-server.hashicorp.com
# function setup_config () {

# }

function result_announcement {
    if [[ $1 -ne 0 ]]; 
    then
        echo "$2 failure with code $1"
    else
        echo "$2 success"
    fi
}

env_output="$(setup_env)"
result_announcement "$env_output" "setup_env()"
