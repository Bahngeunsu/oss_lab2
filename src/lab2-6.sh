#!/bin/sh
if [ -d $1 ]
then
  echo "디렉토리가 존재합니다."
else
  echo "디렉토리가 없어서 만듭니다."
  eval "mkdir $1"
fi

eval "cd ./$1"
echo "파일 5개를 만듭니다."
eval "touch file0.txt file1.txt file2.txt file3.txt file4.txt"
echo "파일 5개를 압축합니다."
eval "tar -cf files.tar file0.txt file1.txt file2.txt file3.txt file4.txt"
echo "새 폴더를 만들어 압축을 풉니다."
eval "mkdir files"
eval "mv files.tar ./files"
eval "cd ./files"
eval "tar -xf files.tar"

exit 0
