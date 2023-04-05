############################################################
#Script to install R packages
#Usage: Rscript install_pkgs.R
#Author: rraghavan
#Output read from a .rds file
############################################################


#Load and install the list of packages stored in installed-packages.rds
ip <- readRDS(file = "installed-packages.rds")
library(devtools)
for (i in 1:nrow(ip)){
  install_version(paste(as.character(ip[i,1])), version = paste(as.character(ip[i,2])), repos = "https://rspm.illumina.com/ilmn-cran/__linux__/centos8/latest")
}
