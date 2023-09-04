#!/bin/bash 
set -e

# create required folders
mkdir -p .tmp/keys

# authenticate
(umask  077 ; echo $1 > .tmp/keys/sfdx.url)
sfdx force:auth:sfdxurl:store \
    --sfdxurlfile .tmp/keys/sfdx.url \
    --setalias ORG