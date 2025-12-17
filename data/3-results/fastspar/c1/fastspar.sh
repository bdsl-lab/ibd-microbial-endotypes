# fastspar
fastspar --otu_table ./genus_c1_feature_table.tsv --correlation ./c1_median_correlation.tsv --covariance ./c1_median_covariance.tsv

# bootstrap
mkdir bootstrap_counts_c1
fastspar_bootstrap --otu_table ./genus_c1_feature_table.tsv \
--number 1000 \
--prefix bootstrap_counts_c1/c1

mkdir bootstrap_correlation_c1
parallel fastspar \
  --otu_table {} \
  --correlation ./bootstrap_correlation_c1/cor_{/.}.tsv \
  --covariance ./bootstrap_correlation_c1/cov_{/.}.tsv \
  -i 5 ::: bootstrap_counts_c1/*.tsv

fastspar_pvalues --otu_table ./genus_c1_feature_table.tsv --correlation ./c1_median_correlation.tsv \
--prefix ./bootstrap_correlation_c1/cor_c1_ --permutations 1000 --outfile ./c1_pvalues.tsv