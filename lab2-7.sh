#!/bin/sh
echo "디렉토리를 만듭니다."
eval "mkdir $1"
eval "cd ./$1"
dir_path=$(pwd)

file_names="file0 file1 file2 file3 file4"
echo "이름이 같은 파일들과 폴더들을 만들고 각 폴더와 해당 파일을 링크합니다."

for name in $file_names
do
  eval "touch $name.txt"
  eval "mkdir $name"
  eval "cd ./$name"
  eval "ln -s $dir_path/$name.txt $name.txt "
  eval "cd .."
done

exit 0
