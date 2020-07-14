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

Run:
    
    kmer_count.sh

