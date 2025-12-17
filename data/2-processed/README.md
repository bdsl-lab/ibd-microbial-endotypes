# Processed data files 

Raw sequencing data were processed into amplicon sequence variant (ASV) tables and corresponding representative sequences using QIIME2. 

## Directories

* `amplicon`: Preprocessed data for amplicon sequencing analyses. This directory contains ASV tables, diversity analysis results, and functional prediction results generated using PICRUSt2.

## Data processes 

* Generation of ASV feature tables
* Phylogenetic tree construction using representative sequences
* Taxonomic annotation using the GTDB release 220 database with the consensus BLAST method
* Alpha and beta diversity calculations using QIIME2
* Functional profiling using PICRUSt2
