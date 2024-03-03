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
function setup_config {
    #Right now will make a duplicate copy of the file if it already exists
    cat <<EOF > config.hcl
cluster_addr  = "https://<HOSTNAME>:8201"
api_addr      = "https://<HOSTNAME>:8200"
disable_mlock = true
EOF

# -i does in-place edit, -e appends all info to the command; /g does a global replace
sed -i -e 's/<HOSTNAME>/vault-server.hashicorp.com/g' ./config.hcl
}

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

env_out="$(setup_config)"
result_announcement "env_output" "setup_config()"