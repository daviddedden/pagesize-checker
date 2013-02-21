#!/bin/bash 
echo "Clearing any old data..."
rm -f pagesize.csv
rm -f temp.txt
echo "Importing URLs..."
file=sizeurls.csv
url=""
counter=0
while IFS= read -r line
do
    echo "Gathering page size $line"
    phantomjs yslow.js --info basic --format plain $line | grep 'url\|size' >> temp.txt
done < "$file"
echo "Formatting data..."
sed -i 's/size://g' temp.txt
sed -i 's/url://g' temp.txt
paste - - -d, < temp.txt > pagesize.csv
echo "Done!"
