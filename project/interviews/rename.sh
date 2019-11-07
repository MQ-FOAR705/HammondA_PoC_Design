for f in *.txt;
do
mv "$f" "interview_$f"
done

for renamed in *.txt
do
mv $renamed /mnt/c/FOAR705/project/ready
done
