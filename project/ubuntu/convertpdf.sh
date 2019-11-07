for f in /mnt/c/foar705/project/articles/*.pdf
do
pdftotext "$f" "$f.txt"

mv "$f" /mnt/c/foar705/project/articles/converted

done

cd /mnt/c/foar705/project/articles

bash renamemove.sh
