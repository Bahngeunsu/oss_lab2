#!/bin/sh
height=`echo "scale=3; $2/100" |bc`
bmi=`echo "scale=3; $1/($height*$height)" |bc`

if [ `echo "$bmi < 18.5" |bc` -eq 1 ]
then
  echo "저체중입니다."
  
elif [ `echo "18.5 <= $bmi" |bc` -eq 1 ] && [ `echo "$bmi < 23" |bc` -eq 1 ]
then
  echo "정상제중입니다."
  
elif [ `echo "23 <= $bmi" |bc` -eq 1 ] && [ `echo "$bmi < 25" |bc` -eq 1 ]
then
  echo "과제중입니다."

elif [ `echo "25 <= $bmi" |bc` -eq 1 ] && [ `echo "$bmi < 30" |bc` -eq 1 ]
then
  echo "비만입니다."
  
else
  echo "고도비만입니다."
fi

exit 0
