#!/bin/bash

###########################
#  Adam Lathers
#  adam.lathers@citrix.com,alathers@gmail.com
#   7/29/2014
###########################

##########################
#  A quick demo including command line arguments, variable assignment, proper use of full path
# 
##########################


variable=$1


# Starting in full long form
/bin/echo "Hello ${variable}"
/bin/echo "Hello ${1} ${2} ${3}"

# Shortcuts are usually possible, for example skippoing the {} 
/bin/echo "Hello $variable"


# But not always!  Sometimes you wanna adjust a substring, and without encapsulating the variable it'll fail
/bin/echo "Hello $variable1 $variable2"

echo;echo;echo
echo "--------------------------------------------------------------"

echo "Now how's it work?"
cat $0

exit
