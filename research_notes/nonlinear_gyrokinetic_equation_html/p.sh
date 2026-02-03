grep -P -o '/home/yj/.*?png' *.html >list.txt

while IFS= read -r line; do
    #echo "Text read from file: $line"
    cp --parents $line ./
done < list.txt
