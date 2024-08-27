#!/bin/bash

echo "Please enter the directory"
read the_directory

if [[ -e $the_directory ]]
        then
                echo "The directory exists"
else
        echo "ERROR"
fi

for file  in "$the_directory"/*.txt
do
        if [[ -f $file ]]
                then
                        base_name=$(basename $file)
                         mv $file $the_directory/old_$base_name
                        echo "Renamed $file to $the_directory/old_$base_name"
        fi
done
