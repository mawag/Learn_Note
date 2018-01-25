#!/bin/bash

#default

#Usage: runit [-c] [-f procfile|Procfile] [-e envfile|.env]

#default procfile
PROCFILE="procfile"

#default envfile
ENVFILE=".env"

#default c
FLAG_C=false

while getopts "Vcf:e:" option
do 
    case "$option" in
        f)
            echo "option:f, value $OPTARG"
	    PROCFILE=$OPTARG;;
        e)
            #echo "option:e, value $OPTARG"
            ENVFILE=$OPTARG;;
        c)
            #echo "option:c"
            FLAG_C=true;;
        V)
	    echo "runit version 0.1"
	    echo "power by AnSheng"
	    exit 0;;           
        \?)
            echo "Usage: runit [-c] [-f procfile|Procfile] [-e envfile|.env]"
            exit 1;;
    esac
done

echo "*** do something now ***"
echo "procfile=$PROCFILE"
echo "envfiel = $ENVFILE"
echo "c = $FLAG_C"





