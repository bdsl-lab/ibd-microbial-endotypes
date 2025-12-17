# fastspar
fastspar --otu_table ./genus_c3_feature_table.tsv --correlation ./c3_median_correlation.tsv --covariance ./c3_median_covariance.tsv

# bootstrap
mkdir bootstrap_counts_c3
fastspar_bootstrap --otu_table ./genus_c3_feature_table.tsv \
--number 1000 \
--prefix bootstrap_counts_c3/c3

mkdir bootstrap_correlation_c3
parallel fastspar \
  --otu_table {} \
  --correlation ./bootstrap_correlation_c3/cor_{/.}.tsv \
  --covariance ./bootstrap_correlation_c3/cov_{/.}.tsv \
  -i 5 ::: bootstrap_counts_c3/*.tsv

fastspar_pvalues --otu_table ./genus_c3_feature_table.tsv --correlation ./c3_median_correlation.tsv \
--prefix ./bootstrap_correlation_c3/cor_c3_ --permutations 1000 --outfile ./c3_pvalues.tsv