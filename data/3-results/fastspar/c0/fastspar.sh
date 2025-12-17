# fastspar
fastspar --otu_table ./genus_c0_feature_table.tsv --correlation ./c0_median_correlation.tsv --covariance ./c0_median_covariance.tsv

# bootstrap
mkdir bootstrap_counts_c0
fastspar_bootstrap --otu_table ./genus_c0_feature_table.tsv \
--number 1000 \
--prefix bootstrap_counts_c0/c0

mkdir bootstrap_correlation_c0
parallel fastspar \
  --otu_table {} \
  --correlation ./bootstrap_correlation_c0/cor_{/.}.tsv \
  --covariance ./bootstrap_correlation_c0/cov_{/.}.tsv \
  -i 5 ::: bootstrap_counts_c0/*.tsv

fastspar_pvalues --otu_table ./genus_c0_feature_table.tsv --correlation ./c0_median_correlation.tsv \
--prefix ./bootstrap_correlation_c0/cor_c0_ --permutations 1000 --outfile ./c0_pvalues.tsv