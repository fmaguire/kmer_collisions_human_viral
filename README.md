# K-mer collisions between human and viral reference

Investigation of k-mer collisions between human and viral reference.
Using the `GChr_38_no_alt` and `MN908947_3.fasta`

## Install Dependencies

Using conda/mamba run:

    mamba create --file env.yaml 
    conda activate kmer_collision

## Get Data

Run:

    get_data.sh

## Count K-mers 

Running Jellyfish on both references

Default k-mer size in kraken2 is 35 (minimiser is 31) so running k-mer counting
from k=25-45.

Adjust parallelisation in script as you see fit (`-t` in `jellyfish` command and `-j` in parallel).

Run:
    
    kmer_counting.sh

## Compare K-mer Count Hashes

Using the K-mer Analysis Toolkit (KAT) compare all the viral vs human hashes for each k-mer size.
Note: KAT can run jellyfish directly but given the difference in size between the genomes it was easier
to separate this stage of the analysis.

Run:
    
    compare_kmer_hashes.sh

