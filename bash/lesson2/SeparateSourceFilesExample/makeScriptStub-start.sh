#!/bin/bash

###########################
#  Adam Lathers
#  adam.lathers@citrix.com,alathers@gmail.com
#  10/6/2014
###########################

############################
#
# Purpose: This script is a demo of how to have external configuration files, and source files
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

# Read the config file for author info.  In this case a file with a . at the start of the name makes it invisible by default for an ls operation.
source .author    # This could also be shortened to just be . .author in bash.  the . character in this case should be an alias to the source directive.


date="$(date +'%m-%d-%Y')"
sed='/usr/bin/sed'
templateFile='bashTemplate.txt'


# Replace the placeholders in the file with the actual information
#   BE CAREFUL:  Order of operations matters here.  If, for example, you swapped AUTHOREMAIL and AUTHOR, you'd wind up with something broken.  Try it
#       What happened?

${sed} "s/DATE/${date}/g" ${templateFile} | ${sed} "s/AUTHOREMAIL/${email}/g" | ${sed} "s/AUTHOR/${author}/g"  


################ SCRIPT END

###########################
#   CHANGELOG
#    10-07-2014 - Adam Lathers: Created first draft of this script
#
#
#
#
#
#
#
###########################