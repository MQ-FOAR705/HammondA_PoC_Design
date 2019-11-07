joplin sync
joplin export /mnt/c/foar705/project/fieldnotes/ --format md --notebook FIELDNOTES

for f in /mnt/c/foar705/project/fieldnotes/FIELDNOTES/*.md
do
mv "$f" /mnt/c/foar705/project/fieldnotes/

done

rmdir /mnt/c/foar705/project/fieldnotes/FIELDNOTES
rmdir /mnt/c/foar705/project/fieldnotes/_resources

cd /mnt/c/foar705/project/fieldnotes
bash renameandmove.sh
