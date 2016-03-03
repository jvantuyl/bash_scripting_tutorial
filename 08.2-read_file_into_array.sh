#!/bin/bash

# modified version on this => https://linuxconfig.org/bash-scripting-tutorial#h8-2-read-file-into-bash-array

# create empty array into which we'll put file contents
declare -a FILE_CONTENTS

# set count to 0
let count=0

# read each line file into FILE_CONTENTS, and increment count
while read LINE; do
  FILE_CONTENTS[$count]=$LINE
  ((count++))
done < file_for_08.2

# echo number of elements in array
echo ${#FILE_CONTENTS[@]}

# echo contents of array
echo ${FILE_CONTENTS[@]}
