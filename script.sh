#!/bin/bash

# initialize dir path
myFiles=~/myFiles
#check if the file exists
mkdir -p "$myFiles"

myName="Lucy"
fileNumberTracker="$myFiles/.fileNumber"

if [ -f "$fileNumberTracker" ]; then
	fileNumber=$(< "$fileNumberTracker")
else
	touch "$fileNumberTracker"
	fileNumber=1;
fi
# this is Lucy

cd "$myFiles" || exit

for ((i = 1; i <=25; i++)); do
	touch "${myName}${fileNumber}"
	((fileNumber++))
done

echo "$fileNumber" > "$fileNumberTracker"

ls -la "$myFiles"
