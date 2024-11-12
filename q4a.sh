#!/bin/sh

zero_men=0
one_men=0
zero_women=0
one_women=0
while read p;
do
	line=`echo $p`
	sex=`echo $p|awk 'BEGIN{FS=","}{print $2}'`
	target=`echo $p|awk 'BEGIN{FS=","}{print $14}'`

	if [ "$sex" = "0" ];
	then
		if [ "$target" = "0" ];
		then
			zero_men=`echo "$zero_men+1"|bc -l`
		else
			one_men=`echo "$one_men+1"|bc -l`
		fi
	else
		if [ "$target" = "0" ];
		then
			zero_women=`echo "$zero_women+1"|bc -l`
		else
			one_women=`echo "$one_women+1"|bc -l`
		fi
	fi

done <heart.csv

echo "gender,target_0,target_1" > q4a.csv
echo "0,$zero_men,$one_men" >> q4a.csv
echo "1,$zero_women,$one_women" >> q4a.csv

gnuplot q4a.gp
open q4a.pdf