# fastspar
fastspar --otu_table ./genus_c2_feature_table.tsv --correlation ./c2_median_correlation.tsv --covariance ./c2_median_covariance.tsv

# bootstrap
mkdir bootstrap_counts_c2
fastspar_bootstrap --otu_table ./genus_c2_feature_table.tsv \
--number 1000 \
--prefix bootstrap_counts_c2/c2

mkdir bootstrap_correlation_c2
parallel fastspar \
  --otu_table {} \
  --correlation ./bootstrap_correlation_c2/cor_{/.}.tsv \
  --covariance ./bootstrap_correlation_c2/cov_{/.}.tsv \
  -i 5 ::: bootstrap_counts_c2/*.tsv

fastspar_pvalues --otu_table ./genus_c2_feature_table.tsv --correlation ./c2_median_correlation.tsv \
--prefix ./bootstrap_correlation_c2/cor_c2_ --permutations 1000 --outfile ./c2_pvalues.tsv