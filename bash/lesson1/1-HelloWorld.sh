#!/bin/bash         # This is called a "shabang", #! is a special character combo when the very first 2 characters in a shell script

###########################
#  Adam Lathers
#  adam.lathers@citrix.com,alathers@gmail.com
#   7/29/2014
###########################

##########################
#  A quick demo of basic script attributes, including using the interpreter definition, and setting permissions to include the execute bit
# 
##########################




echo "Hello World"  # echo with no path, may or may not work
/bin/echo "Hello World" # echo with full path should always work, as long as the path is correct for the host you're running this on

echo;echo;echo
echo "--------------------------------------------------------------"

echo "Now how's it work?"
cat $0

exit
