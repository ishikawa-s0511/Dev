#!/bin/bash

PYVTXT1=pyver1.txt
PYVTXT2=pyver2.txt
PYVTXT3=pyver3.txt 
PYVTXT4=pyver4.txt

python3 --version >& $PYVTXT1
#cat $PYVTXT1

cat $PYVTXT1 | tr '[:upper:]' '[:lower:]' > $PYVTXT2 
#cat ${PYVTXT2}

sed -e 's/ //g' $PYVTXT2 > $PYVTXT3 
cat $PYVTXT3 |cut -c 1-9 >& $PYVTXT4 
#echo $PYVTXT4

PYVTXT5=`cat $PYVTXT4`

PYPATH=/usr/include/${PYVTXT5}m
#echo $PYPATH

export PATH=$PATH:$PYPATH >> ~/.bash_profile

source ~/.bash_profile

rm -rf pyver*
