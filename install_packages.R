# ==============================================================================
# 2019_MoAMCD Package Installation Script
# Multi-omics profiling visualizes dynamics of cardiac development and functions
# ==============================================================================

# 1. CRAN Packages
cran_packages <- c(
  "ggplot2", "dplyr", "reshape2", "pheatmap", "RColorBrewer",
  "ggpubr", "ggrepel", "ggsci", "viridis", "scales",
  "magrittr", "ggExtra", "scatterplot3d", "networkD3",
  "VennDiagram", "ape"
)

# 2. Bioconductor Packages
bioc_packages <- c(
  "clusterProfiler",
  "org.Mm.eg.db",
  "Mfuzz",
  "limma",
  "ggseqlogo"
)

message("[*] Checking and installing CRAN packages...")
for (pkg in cran_packages) {
  if (!requireNamespace(pkg, quietly = TRUE)) {
    install.packages(pkg, dependencies = TRUE)
  }
}

message("[*] Checking and installing Bioconductor packages...")
if (!requireNamespace("BiocManager", quietly = TRUE)) {
  install.packages("BiocManager")
}

for (pkg in bioc_packages) {
  if (!requireNamespace(pkg, quietly = TRUE)) {
    BiocManager::install(pkg, update = FALSE, ask = FALSE)
  }
}

message("[*] All required packages installed successfully!")
