#!/bin/bash

#take curent date for name modify
curent_date=$(date +%d-%m-%Y);

#select all txt file in directory
directory=$(ls *.txt); 

#arhive all txt file with modify name in curent directory
for file in $directory;
do
    tar -czvf $file"_"$curent_date.tar.gz ./$file;
done