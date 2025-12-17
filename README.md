# korean-ibd-for-microbiome

This repository contains data and analysis workflows for a large-scale gut microbiome study of** inflammatory bowel disease (IBD)**. We analyzed microbial profiles from **IBD patients**, **at-risk individuals**, and **healthy controls**, with a focus on identifying **microbial endotypes (enterotypes)** and their associations with clinical outcomes.

**Manuscript (under publication):** Enterotype-based stratification identifies microbial endotypes with distinct clinical courses in inflammatory bowel disease

## Study overview 

* Cohorts
  * IBD patients (n = 260)
  * At-risk individuals (n = 166)
  * Healthy controls (n = 57)
* Data type
  * 16S rRNA gene amplicon sequencing
* Key analyses
  * Enterotype (microbial endotype) identification
  * Disease-associated microbial signatures
  * Machine-learning–based classification
  * Microbial interaction network analysis
  * Survival analysis for medication step-up

## Data availability 

* Raw FASTQ files are deposited in ENA and NCBI SRA 
  * BioProject / Study accession: PRJEB101301
* Related metadata and raw-data information are available in: `data/1-raw`

## Analysis pipeline (summary)

* Preprocessing
  * DADA2 denoising in QIIME 2
  * Taxonomic assignment, phylogenetic tree construction
  * Alpha and beta diversity analysis
  * Functional profiling with PICRUSt2
* Enterotype analysis
  * Dimensionality reduction using t-SNE
  * Clustering with Gaussian Mixture Models
* Statistical analysis
  * Kruskal–Wallis tests across disease groups
  * Enterotype-specific and shared disease associations
* Machine learning
  * Random Forest classification
  * Feature importance and SHAP value analysis
  * Enterotype-specific models
* Network analysis
  * Microbial association inference using FastSpar
* Clinical outcome analysis
  * Survival analysis for medication step-up

## Dependencies 

* `mbiomkit` (in-house analysis toolkit): https://github.com/bdsl-lab/mbiomekit

