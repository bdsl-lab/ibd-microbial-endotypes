# fastspar
fastspar --otu_table /home/microbiome/projects/ibd/analysis/notebooks/enterotypes/picrust/genus_feature_table.tsv --correlation all_median_correlation.tsv --covariance all_median_covariance.tsv

# bootstrap
mkdir bootstrap_counts_all
fastspar_bootstrap --otu_table /home/microbiome/projects/ibd/analysis/notebooks/enterotypes/picrust/genus_feature_table.tsv \
--number 1000 \
--prefix bootstrap_counts_all/all

mkdir bootstrap_correlation_all
parallel fastspar \
  --otu_table {} \
  --correlation ./bootstrap_correlation_all/cor_{/.}.tsv \
  --covariance ./bootstrap_correlation_all/cov_{/.}.tsv \
  -i 5 ::: bootstrap_counts_all/*.tsv

fastspar_pvalues --otu_table /home/microbiome/projects/ibd/analysis/notebooks/enterotypes/picrust/genus_feature_table.tsv --correlation ./all_median_correlation.tsv \
--prefix ./bootstrap_correlation_all/cor_all_ --permutations 1000 --outfile ./all_pvalues.tsv

