#!/bin/bash

# modified version on this => https://linuxconfig.org/bash-scripting-tutorial#h8-2-read-file-into-bash-array

# create empty array into which we'll put file contents
declare -a FILE_CONTENTS

# redirect stdin to filedescriptor 10 (we'll restore it to 0 later)
exec 10<&0

# stdin in replace by file
exec < file_for_08.2

# set count to 0
let count=0

# read each line file into FILE_CONTENTS, and increment count
while read LINE; do
  FILE_CONTENTS[$count]=$LINE
  ((count++))
done

# echo number of elements in array
echo ${#FILE_CONTENTS[@]}

# echo contents of array
echo ${FILE_CONTENTS[@]}

# point stdin to filedescriptor 0, and disable filedescriptor 10
exec 0<&10 10<&-
