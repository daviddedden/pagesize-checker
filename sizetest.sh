#!/bin/bash 
echo "Importing URLs..."
file=sizeurls.csv
url=""
while IFS= read -r line
do
     url+=" "
     url+=$line
done < "$file"
echo "Gathering page sizes..."
#phantomjs yslow.js --info basic --format plain http://www.yslow.org http://www.google.com/ | grep 'url\|size' > pagesize.txt
phantomjs yslow.js --info basic --format plain $url | grep 'url\|size' > temp.txt
echo "Formatting data..."
sed -i 's/size://g' temp.txt 
sed -i 's/url://g' temp.txt
paste - - -d, < temp.txt > pagesize.csv
echo "Done!"
