#! /bin/bash
for FILE in `ls *.md`
do
   FLITER=`echo "$FILE" | sed '1,$s/\([a-zA-Z]\).*/\1/g' | tr 'a-z' 'A-Z'`  
   NEW_FILE_NAME=`echo "$FILE" | sed "s/[a-zA-Z]\(.*\)/$FLITER\1/g"`
   mv $FILE $NEW_FILE_NAME  
done