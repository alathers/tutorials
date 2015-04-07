#!/bin/bash

###########################
#  Adam Lathers
#  adam.lathers@citrix.com,alathers@gmail.com
#   7/29/2014
###########################

##########################
#  Included topics: If statements and "test" actions, integer and string tests
# 
##########################




if [ $1 = "Adam" ] ; then
    echo "Hello Mr Awesome $1"
else
    echo "Hello $1"
fi



if [ ${#1} -eq 4 ] ; then           # In this case, we're showing that ${#varname} is the length of the string AND that 
                                    # the operator for numeric and string comparisons is different.  try "man test" for more info
    echo "Did you say your name is Adam????   AWESOME!"
fi


echo;echo;echo
echo "--------------------------------------------------------------"

echo "Now how's it work?"
cat $0

exit
