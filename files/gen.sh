#!/bin/csh

set WATBEG=`grep WAT $1 | head -n 1 | awk '{print($5)}'`
set WATEND=`grep WAT $1 | tail -n 1 | awk '{print($5)}'`
@ PROEND = $WATBEG - 1
# `grep WAT $1 | head -n 1 | awk '{print($5)}'`
@ FSOLU = $WATEND + 1 
set FSOLU=`grep Na+ $1 | head -n 1 | awk '{print($5)}'`
set LSOLU=`grep Na+ $1 | tail -n 1 | awk '{print($5)}'`
set LAST=`grep Na+ $1 | tail -n 1 | awk '{print($2)}'`


sed -e "/WATBEG/s//$WATBEG/" \
       -e "/WATEND/s//$WATEND/" min1.in.template >min1.in

sed -e "/WATBEG/s//$WATBEG/" \
       -e "/WATEND/s//$WATEND/" min2.in.template >min2.in
sed -e "/PROEND/s//$PROEND/" min3.in.template >min3.in
sed -e "/PROEND/s//$PROEND/" min4.in.template >min4.in

sed -e "/PROEND/s//$PROEND/" md1.in.template >md1.in
sed -e "/PROEND/s//$PROEND/" md2.in.template >md2.in

sed -e "/PROEND/s//$PROEND/" min11.in.template >min11.in
sed -e "/PROEND/s//$PROEND/" md11.in.template >md11.in
sed -e "/PROEND/s//$PROEND/" min12.in.template >min12.in
sed -e "/PROEND/s//$PROEND/" md12.in.template >md12.in

sed -e "/PROEND/s//$PROEND/" min13.in.template >min13.in
sed -e "/PROEND/s//$PROEND/" md13.in.template >md13.in

sed -e "/PROEND/s//$PROEND/" min14.in.template >min14.in
sed -e "/PROEND/s//$PROEND/" md14.in.template >md14.in

sed -e "/FSOLU/s//$FSOLU/" \
      -e "/LSOLU/s//$LSOLU/" min15.in.template >min15.in

sed -e "/FSOLU/s//$FSOLU/" \
      -e "/LSOLU/s//$LSOLU/" md15.in.template >md15.in

sed -e "/FSOLU/s//$FSOLU/" \
      -e "/LSOLU/s//$LSOLU/" md16.in.template >md16.in
cat prod_md.in.template > prod_md.in 
