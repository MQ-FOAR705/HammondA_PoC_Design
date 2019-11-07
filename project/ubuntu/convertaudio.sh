for f in /mnt/c/FOAR705/project/interviews/*.wav
do

deepspeech --model deepspeech/models/output_graph.pbmm --alphabet deepspeech/models/alphabet.txt --lm deepspeech/models/lm.binary --trie deepspeech/models/trie --audio $f > "${f%.wav}".txt;

mv $f /mnt/c/FOAR705/project/interviews/converted

done

cd /mnt/c/FOAR705/project/interviews

bash /mnt/c/FOAR705/project/interviews/rename.sh
