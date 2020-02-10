pdftotext -layout result_CHN.pdf result_CHN.txt
grep "CHN18CS" result_CHN.txt
grep "CHN18CS" result_CHN.txt > result_cs.txt
tr '\n' ' ' <result_cs.txt > result_aa.txt
sed 's/\t//g' result_aa.txt > result_bb.txt
awk '{$1=$1;print}' result_bb.txt > result_aa.txt
sed 's/CHN/\nCHN/g' result_aa.txt > result_bb.txt
tr ',' ' ' <result_bb.txt > result.txt
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
 }' result.txt > gp.txt
awk  '{
         sum=0
         flag=0
         fail=0
         for(i=2;i<=NF;i++)
         {
           if($i==0)
             {
               flag = 1
               fail = fail+1
             }
           sum+=$i
         }
       cgpa=sum/9
       if(flag==0)
        {
          printf("%s %0.2f\n",$1,cgpa)
       }
       if(flag==1)
         {
          printf("%s -%d\n",$1,fail)
         }   

      }' gp.txt > cgpa_raw.txt

join student_list.txt cgpa_raw.txt>cgpa.txt

