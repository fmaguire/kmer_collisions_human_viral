#!/bin/bash

mkdir -p data/kmer_counts

cat /dev/null > kmer_counting_commands

for k in {25..45};
do  
    echo "jellyfish count -m $k -s 500M -t 8 -o data/kmer_counts/human_${k}.jf data/GRC38_no_alt_analysis_set.fna" >> kmer_counting_commands
    echo "jellyfish count -m $k -s 50M -t 2 -o data/kmer_counts/viral_${k}.jf data/MN908947.3.fasta" >> kmer_counting_commands
done

parallel -j 2 < kmer_counting_commands
