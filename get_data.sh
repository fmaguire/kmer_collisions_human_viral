#!/bin/bash

mkdir -p data
database_dir=data

# as per https://lh3.github.io/2017/11/13/which-human-reference-genome-to-use
curl -s "ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/000/001/405/GCA_000001405.15_GRCh38/seqs_for_alignment_pipelines.ucsc_ids/GCA_000001405.15_GRCh38_no_alt_analysis_set.fna.gz" > $database_dir/GRC38_no_alt_analysis_set.fna.gz
gunzip $database_dir/GRC38_no_alt_analysis_set.fna.gz

# viral reference
accession="MN908947.3"
curl -s "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=nucleotide&id=${accession}&rettype=fasta&retmode=txt" > $database_dir/$accession.fasta


