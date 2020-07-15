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

## Compare K-mers 

Running Jellyfish on both references

Default k-mer size in kraken2 is 35 (minimiser is 31) so running k-mer counting
from k=25-45.

The K-mer Analysis Toolkit (KAT) then compares the two hashes for each k-mer size
and the hashes are removed to save space.
Note: KAT can run jellyfish directly but given the difference in size between the genomes it was easier
to separate this stage of the analysis.

Adjust parallelisation in script as you see fit (`-t` in `jellyfish`)

Run:
    
    kmer_comparison.sh

## Generate Plots

See notebook:

    host_virus_kmer_collisions.ipynb

 For parsing of KAT output and generation of plots: 
    
    distinct_shared_kmers.png
    total_shared_kmers.png
