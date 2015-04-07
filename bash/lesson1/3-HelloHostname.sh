#!/bin/bash

###########################
#  Adam Lathers
#  adam.lathers@citrix.com,alathers@gmail.com
#   7/29/2014
###########################

##########################
#  Topics: assigning command output to a variable (good and bad ways), complex command and nested command examples provided as well
##########################


echo "The simple way of backticks"
hostname=`hostname -f`
echo "Hello $hostname"
echo

echo "Backticks are WRONG!, use parens"
hostname=$(hostname -f)
echo "Hello $hostname"

echo "sometimes complex commands are neato"
shortname=$(hostname -f | cut -d. -f1)
echo "Shortname is $shortname"

echo
echo
echo


echo "You can even nest commands"
specialfile=$(cat $(egrep -l SPECIAL $(ls -1)))

echo $specialfile
echo
echo "Pardon the poor treatment of newlines, maybe you can work on getting them to be respected as an exercise?"


echo;echo;echo
echo "--------------------------------------------------------------"

echo "Now how's it work?"
cat $0

exit
