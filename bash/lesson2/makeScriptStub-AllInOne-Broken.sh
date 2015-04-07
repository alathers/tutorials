#!/bin/bash

###########################
#  Adam Lathers
#  adam.lathers@citrix.com,alathers@gmail.com
#  10-07-2014
###########################

############################
#
# Purpose: A template starter for BASH scripts to make sure you consistently include basic info and maintain a clear format
#
###########################

###########################
#
# ToDo:
#   Better error handling for no dest filename
#   Better error handling for bad date execution in de-template step
#   
#
# Bugs:
#   10/7/2014 - Some bugs deliberately introduced to test student debug skills
#
###########################


################ SCRIPT START


# Using a HERE document, simply output a stub file to STDOUT, with the correct date and author info in variables to make code sharing easier
author="Adam Lathers"
authorEmail="adam.lathers@citrix.com,alathers@gmail.com"  



        #There's something wrong here
output=$(   
/bin/cat  << "ScriptTemplate"


#!/bin/bash

###########################
#  ${author}
#  ${authorEmail}
#  $(date +'%m-%d-%Y')
###########################

############################
#
# Purpose: 
#
#
###########################

###########################
#
# ToDo: 
#
#
#
# Bugs:
#
#
###########################


################ SCRIPT START








################ SCRIPT END

###########################
#   CHANGELOG
#    $(date +'%m-%d-%Y') - ${author}: Created first draft of this script
#
#
#
#
#
#
#
###########################
ScriptTemplate







################ SCRIPT END

###########################
#   CHANGELOG
#
#
#
#
#
#
#
#
###########################




) 



if [ $# -eq 1 ]; then 
    if [ ! -s $1]; then         # something wrong here.  it's really tricky and mean!
        echo "$output" > $1
    else 
        echo "ERROR: File $1 already exists.  Please remove first"
    fi
else
    echo $output    # Something wrong here
fi














