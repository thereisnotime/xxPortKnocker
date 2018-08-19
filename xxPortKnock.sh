#!/bin/bash
#XXPORTKNOCK
##################
# xxPortKnock
# v1.0
##################
function showHelp() {
	echo "Usage: bash xxPortKnock.sh TCP/UDP IP PORT1 PORT2..."
	echo "You can also use t and u for short."
	exit 1
}
function tcp() {
	echo "Knocking on " $1 $2 "TCP"
	( echo 1 > /dev/tcp/${1}/${2} ) > /dev/null 2>&1
}
function udp() {
	echo "Knocking on " $1 $2 "UDP"
	( echo 1 > /dev/udp/${1}/${2} ) > /dev/null 2>&1
}
if [ "$#" -lt 3 ]; then
	echo "Error: At least 3 arguments are required."
	showHelp
fi

argArray=("$@")
if [ "$1" == "tcp" ] || [ "$1" == "t" ]; then
	for i in "${!argArray[@]}"; do 
		if [ "$i" -gt 1 ]; then
			tcp "$2" "${argArray[$i]}"
		fi
	done
elif [ "$1" == "udp" ] || [ "$1" == "u" ]; then
	for i in "${!argArray[@]}"; do 
		if [ "$i" -gt 1 ]; then
			udp "$2" "${argArray[$i]}"
		fi
	done
else
	echo "Error: Please use tcp (t) or udp (u)."
	showHelp
fi
# END OF FILE
