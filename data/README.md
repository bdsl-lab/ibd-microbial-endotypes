# Data

This directory contains the data used in this study, organized by processing stage and analysis purpose.

## Directories 

* `1-raw`: Raw data. Note that raw FASTQ files have been deposited in the European Nucleotide Archive (ENA) and the NCBI Sequence Read Archive (SRA).
* `2-processed`: Processed and intermediate data generated during preprocessing and downstream analyses.
* `3-results`: Result files, including outputs from statistical analyses and machine learning models.

## Frequently used files

Files that are frequently referenced across analyses are placed in the root of the data directory for convenience.

### Feature tables

* `ft_asv_tx.tsv`: Feature table at the amplicon sequence variant (ASV).
* `ft_genus.tsv`: Feature table aggregated at the genus level. 
* `ft_genus_prv01.tsv`: Genus-level feature table filtered using a prevalence cutoff of 0.1.
* 
### Analysis results 

* `alpha_diversity.tsv`: Alpha diversities calculated from processed data.
* `enterotype.tsv`: Enterotype assignments inferred using t-SNE and clustering analyses.

### Group 

* `group.tsv`: Sample group information, including disease status.


### Functional analysis

* `pathway.tsv`: Pathway abundance profiles inferred using PICRUSt2.

