#!/bin/bash

###########################
#  Adam Lathers
#  adam.lathers@citrix.com,alathers@gmail.com
#  10/6/2014
###########################

scriptname=${1}
date="$(date +'%m-%d-%Y')"
sed='/usr/bin/sed'
templateFile='bashheader.txt'


# Replace the DATE placeholder in the file with the actual creation date
${sed} "s/DATE/${date}/g" ${templateFile} > ${scriptname}