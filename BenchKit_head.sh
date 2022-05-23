#!/bin/bash
#############################################################################
# This is an example for the MCC'2015
#############################################################################

#############################################################################
# In this script, you will affect values to your tool in order to let
# BenchKit launch it in an apropriate way.
#############################################################################

# BK_EXAMINATION: it is a string that identifies your "examination"

set -x
export BINDIR=$BK_BIN_PATH/../

export MODEL=$(pwd)


if [[ $BK_EXAMINATION = ReachabilityCardinality || $BK_EXAMINATION = ReachabilityFireability || $BK_EXAMINATION = ReachabilityDeadlock || $BK_EXAMINATION = OneSafe ]] ;
then
	
	# Create a temporary directory and store its name in a variable.
	TEMPD=$(mktemp -d)

	# Exit if the temp directory wasn't created successfully.
	if [ ! -e "$TEMPD" ]; then
	    >&2 echo "Failed to create temp directory"
    	exit 1
	fi

	# Make sure the temp directory gets removed on script exit.
	trap "exit 1"           HUP INT PIPE QUIT TERM
	trap 'rm -rf "$TEMPD"'  EXIT

	cd $TEMPD
	
	# convert to spec format
	$BINDIR/itstools/its-tools -convert -pnfolder $MODEL -examination $BK_EXAMINATION
	
	# analyze and print results in MCC format
	for i in *.spec ;
	do
		j=$(echo $i 
	
	
else 
	echo "DO_NOT_COMPETE"
fi
