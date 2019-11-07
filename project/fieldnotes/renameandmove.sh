for f in *.md

do
mv "$f" "fieldnote_${f%.md}.txt"

done

for renamed in *.txt
do
mv "$renamed" /mnt/c/FOAR705/project/ready
done
