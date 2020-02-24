#!/bin/bash
grep --no-group-separator -A1 "CHN18CS" result_s2.txt > resultaa.txt
tr  '\n' ' ' < resultaa.txt > resultbb.txt
sed 's/\t//g' resultbb.txt > resultcc.txt
awk '{$1=$1;print}' resultcc.txt > resultbb.txt
sed 's/CHN/\nCHN/g' resultbb.txt > resultcc.txt
tr  ',' ' ' < resultcc.txt > result.txt

sed -i 's/(O)/ 10/g' result.txt
sed -i 's/(A+)/ 9/g' result.txt
sed -i 's/(A)/ 8.5/g' result.txt
sed -i 's/(B+)/ 8/g' result.txt
sed -i 's/(B)/ 7/g' result.txt
sed -i 's/(C)/ 6/g' result.txt
sed -i 's/(P)/ 5/g' result.txt
sed -i 's/(F)/ 0/g' result.txt
sed -i 's/(FE)/ 0/g' result.txt
sed -i 's/(I)/ 0/g' result.txt
sed -i 's/(Absent)/ 0/g' result.txt
awk  '{  
	print $1,$3,$5,$7,$9,$11,$13,$15,$17,$19
 }' result.txt > dd.txt 
awk '{
	sum = 0
	flag = 0
	fails = 0
        var = 2
	while(var<=NF)
	{	
		if($var == 0) 
		{
			flag = 1
			fails = fails + 1
		}
		sum += $var
            var++
	}
	cgpa = sum/9
	if (flag == 0) {	
	 	printf("%s %0.2f\n",$1,cgpa)
	}
	if (flag == 1) {
		printf("%s -%d\n",$1,fails)
	}
}' dd.txt > cgpa_raw.txt

join student_list.txt  cgpa_raw.txt > cgpa.txt


