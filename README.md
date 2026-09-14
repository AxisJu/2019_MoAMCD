# 2019_MoAMCD

Multi-omics analysis pipelines and processed datasets for mapping cardiac development and functional maturation in mice from embryonic day 10.5 to postnatal week 8.

## Repository Architecture

```text
2019_MoAMCD/
├── SourceData/                                      # Processed omics matrices and dataset files
│   ├── omic_data.Rds                                # Combined transcriptome, proteome, and phosphoproteome
│   ├── proteome_raw.Rds                             # Raw proteome abundance data
│   ├── phosphoproteome_raw.Rds                      # Raw phosphoproteome quantification
│   ├── mfuzz_result.Rds                             # Mfuzz temporal clustering results
│   └── Data Generation.R                            # Preprocessing and matrix assembly script
├── Figure 1 Multi-omic Landscape.../                # Global multi-omic landscape and PCA
│   └── Figure 1.Rmd
├── Figure 2 Temporal Profiling.../                  # Dynamic temporal patterns and Mfuzz clustering
│   └── Figure 2.Rmd
├── Figure 3 Enriched Key Pathways.../               # Pathway enrichment and cross-omic network inputs
│   ├── Figure 3.Rmd
│   └── Network Input/                               # Network node and link tables
├── Figure 4 Phosphoproteomic Analysis.../           # Kinase activity and KSP-PUEL / iGPS predictions
│   ├── Figure 4.Rmd
│   ├── iGPS 1.0 Output/                             # Kinase-substrate predictions
│   ├── KSP-PUEL Output/                             # Machine learning kinase predictions
│   └── MAPK Substrate Annotation/                   # Functional annotation tables
├── Figure 5 Epigenomic Approaches.../               # TFRE epigenomics and master transcription factors
│   ├── Figure 5.Rmd
│   ├── Cytohubba Result.csv                         # Topological centrality scores
│   └── Annotations of TFs/                          # TF constraint metrics
├── Figure 6 Integrative Analysis.../                # Phospho-signaling and transcriptional networks
│   ├── Figure 6.Rmd
│   └── STRING Output.txt                            # Protein-protein interaction network
├── Figure S1&2 Summary of Transcriptome.../         # Supplementary QC and validation figures
│   └── Figure S1&2.Rmd
├── install_packages.R                               # Automated R dependency installer
├── .gitignore
└── LICENSE
```

## Prerequisites

- R >= 4.0.0

Install all required CRAN and Bioconductor packages:

```R
source("install_packages.R")
```

Key dependencies:
- Bioconductor: `clusterProfiler`, `org.Mm.eg.db`, `Mfuzz`, `limma`, `ggseqlogo`
- CRAN: `ggplot2`, `dplyr`, `reshape2`, `pheatmap`, `RColorBrewer`, `ggpubr`, `ggrepel`, `ggsci`, `viridis`, `scales`, `magrittr`, `scatterplot3d`, `networkD3`, `VennDiagram`, `ape`

## Publication

Yayun Gu, Yan Zhou, Sihan Ju, Xiaofei Liu, Zicheng Zhang, Jia Guo, Jimiao Gao, Jie Zang, Hao Sun, Qi Chen, Jinghan Wang, Jiani Xu, Yiqun Xu, Yingjia Chen, Yueshuai Guo, Juncheng Dai, Hongxia Ma, Cheng Wang, Guangfu Jin, Chaojun Li, Yankai Xia, Hongbing Shen, Yang Yang, Xuejiang Guo, and Zhibin Hu. "Multi-omics profiling visualizes dynamics of cardiac development and functions." *Cell Reports* 41, no. 13 (December 27, 2022): 111891. https://doi.org/10.1016/j.celrep.2022.111891

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
