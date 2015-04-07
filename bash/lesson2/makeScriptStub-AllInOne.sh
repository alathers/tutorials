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
#	Better error handling for no dest filename
#   Better error handling for bad date execution in de-template step
#   Optionally output directly to a destination file
#
# Bugs:
#	none known at this time (10/7/2014)
#
###########################


################ SCRIPT START


# Using a HERE document, simply output a stub file to STDOUT, with the correct date and author info in variables to make code sharing easier
author="Adam Lathers"
authorEmail="adam.lathers@citrix.com,alathers@gmail.com"


cat << ScriptTemplate
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























