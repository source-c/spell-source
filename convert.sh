#!/bin/bash

# wordforms is a part of hunspell

echo :> full-words.txt

cat words|while read LINE; do
	echo ${LINE} >> full-words.txt
	./wordforms -s en_GB.aff en_GB.dic ${LINE} >> full-words.txt
done

sort -u -o full-words.txt full-words.txt
