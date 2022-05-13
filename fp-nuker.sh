#!/bin/bash
filename='false-positives.txt'
REGEX="/("
while read p; do 
    REGEX+=$p"|"
done < $filename
REGEX=${REGEX%?}
REGEX+=")/d"
echo "Removing $REGEX from $1"
echo "Platform: "
case "$(uname -s)" in

   Darwin)
     echo 'Mac OS X'
     sed -E -i '' $REGEX $1
     ;;

   Linux)
     echo 'Linux'
     sed -E -i $REGEX $1
     ;;

   CYGWIN*|MINGW32*|MSYS*|MINGW*)
     echo 'MS Windows'
     ;;

   # Add here more strings to compare
   # See correspondence table at the bottom of this answer

   *)
     echo 'Other OS' 
     ;;
esac