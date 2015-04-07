#!/bin/bash

hostname=$1
SHORTNAME=`echo $hostname | sed 's/.exper.*//g'`
SITE=`echo $SHORTNAME | awk -F. {'print $2'}`
HOSTBASE=`echo $SHORTNAME | awk -F. {'print $1'}`


usage () {
	echo "usage: $0 <hostname.domain>"
	echo "example: vdgw5.ava"
     
}

if [ $# != 1 ]; then
    usage
    exit
fi

# Just in case AVA doesn't have a collector
if [ $SITE = 'ava' ] ; then
  MONSITE="iad"
else
  MONSITE="$SITE"
fi


#usage <<EOF
#EOF


cat <<EOF
{
    "rootvolresize": 60,
    "tags": {
        "lob": "platform"
    },
    "interfaces": [
        {
            "device": "eth0",
            "eipfqdn": [
              "${HOSTBASE}.${SITE}.citrixonline.com"
            ]
        }
    ]
}
EOF



exit 0


