#!/bin/bash
numDays=23 #interval between runnings
dayOfYear=$(date +"%j") #provides day of year - eg Jan 1 = 1, Dec31= 365/6
moduloOfDayOfYear=$(expr "$dayOfYear" % "$numDays") # provides modulus whatever of current day
if [[ "$moduloOfDayOfYear" == 0 ]]; then
listZpools=$(zpool list -o name -H) # provides list of zpools with no header
for zpool in "$listZpools"; do
zpool scrub "$zpool" # will fire off some number of scrub jobs -the bash script will exit as zfs does the job in the background
done
fi
exit
