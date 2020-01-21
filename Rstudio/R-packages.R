if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install("DNAcopy")
BiocManager::install("maftools")
BiocManager::install("aroma.light")
BiocManager::install('rtracklayer')

CRAN_URL='https://mirrors.shu.edu.cn/CRAN'
install.packages(pkgs = c('devtools', 'ggmcmc', 'glmnet', 'rstan', 'tidyverse', 'xgboost'), dependencies = TRUE, repos = CRAN_URL)
install.packages("Cairo",dependencies = TRUE,repos=CRAN_URL) # 为了增加对png、jpeg的支持
install.packages("MASS",dependencies = TRUE,repos=CRAN_URL)
install.packages("mclust",dependencies = TRUE,repos=CRAN_URL)
install.packages("R.cache",dependencies = TRUE,repos=CRAN_URL)
install.packages("scales",dependencies = TRUE,repos=CRAN_URL)
install.packages("cwhmisc",dependencies = TRUE,repos=CRAN_URL)
install.packages("fastICA",dependencies = TRUE,repos=CRAN_URL)
install.packages("cghseg",dependencies = TRUE,repos=CRAN_URL)
install.packages("digest",dependencies = TRUE,repos=CRAN_URL)
install.packages("PSCBS",dependencies = TRUE,repos=CRAN_URL)
install.packages("ggplot2",dependencies = TRUE,repos=CRAN_URL)
install.packages("rjags",dependencies = TRUE,repos=CRAN_URL)
