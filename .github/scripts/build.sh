#!/bin/bash 
set -e

#unit tests variable
if [[ $1 == "true" ]]
then
    testlevel="RunLocalTests"
else
    testlevel="NoTestRun"
fi

#check-only variable
if [[ $2 = "validation" ]]
then
    check='--checkonly'
fi

sfdx force:source:deploy --manifest ./manifest/package.xml --postdestructivechanges ./manifest/destructiveChangesPost.xml -w 120 -u ORG --testlevel=$testlevel $check