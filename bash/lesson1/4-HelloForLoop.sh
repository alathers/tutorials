#!/bin/bash

###########################
#  Adam Lathers
#  adam.lathers@citrix.com,alathers@gmail.com
#   7/29/2014
###########################

##########################
#  variations on use of $* and $@, as well as an introduction to the impact of quoting
# 
##########################


#   $# is the number of arguments

echo "There are $# Arguments that have been passed to $0"   # Note that $0 is the name of the script itself, this can be useful for things like help functions

echo 'Now with quoting the arguments and using $@' 
for argument in "$@"; do
    echo "Hello $argument"
done
echo;echo

echo 'Now without quoting the arguments and using $@' 
for argument in $@; do   # See what happens if we have a quoted input parameter 
    echo "Hello $argument"
done

echo;echo
echo 'Now with quoting the arguments and using $*' 
for argument in "$*"; do   # See what happens if we have a quoted input parameter 
    echo "Hello $argument"
done

echo;echo
echo 'Now without quoting the arguments and using $*' 
for argument in $*; do   # See what happens if we have a quoted input parameter 
    echo "Hello $argument"
done

echo;echo;echo
echo "--------------------------------------------------------------"

echo "Now how's it work?"
cat $0

exit
