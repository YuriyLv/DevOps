#!/bin/bash

#init log file
log=backup.log
err=err_backup.log

#take curent date for name modify
curent_date=$(date +%d-%m-%Y);

#select all txt file in directory
directory=$(ls *.txt); 

#delete all tar.gz file older then 30min
find -name "*tar.gz" -mmin +30 -type f -exec rm -fv {} \;  2>>$err >>$log

#arhive all txt file with modify name in curent directory
for file in $directory;
do
    tar -czvf $file"_"$curent_date.tar.gz ./$file 2>>$err >>$log 
done

