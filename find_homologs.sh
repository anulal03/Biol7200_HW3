#!/bin/bash

#find_homologs.sh
#find_homologs.sh <query> <subject file> <output file>

query=$1
subject=$2
output=$3

tblastn \
  -query "$query" \
  -subject "$subject" \
  -outfmt "6 qseqid sseqid pident length qlen" \
| awk '$3 > 30 && $4 > 0.9 * $5' > "$output"
wc -l "$output"
