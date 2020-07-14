#!/bin/bash

mkdir -p data/kmer_comparison

for k in {25..45};
do  
    jellyfish count -m $k -s 500M -t 8 -o data/kmer_comparison/human_${k}.jf data/GRC38_no_alt_analysis_set.fna &
    jellyfish count -m $k -s 50M -t 2 -o data/kmer_comparison/viral_${k}.jf data/MN908947.3.fasta &
    wait

    kat comp -t 12 -o data/kmer_comparison/${k}_human_viral.txt
    rm data/kmer_comparison/human_${k}.jf data/kmer_comparison/viral_${k}.jf
done
