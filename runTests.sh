#!/bin/bash
return_path=$1
if [ -f $return_path/pom.xml ]; 
then
	cd $return_path
	./mvnw -Prun-tests-with-ride verify -Dride.argumentFile=$3 -Dride.listener=$5 -Dride.testCasesDirectory=$6
else
	echo No pom.xml found in $return_path
fi
