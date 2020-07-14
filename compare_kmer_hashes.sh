#!/bin/bash

mkdir -p data/kmer_counts/comparisons

# kat comp can do this directly on the fasta (running jellyfish)
# but given the genome disconnect it was easier to separate the commands
for k in {25..45}
do
    kat comp -t 8 -o data/kmer_counts/comparisons/${k}.txt data/kmer_counts/human_${k}.jf data/kmer_counts/viral_${k}.jf
    echo $k
done

