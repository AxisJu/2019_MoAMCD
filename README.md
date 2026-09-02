# 🫀 2019_MoAMCD: Multi-Omics Atlas of Mouse Cardiac Development

**Official Codebase for *"Multi-omics profiling visualizes dynamics of cardiac development and functions"***

[![R 4.0+](https://img.shields.io/badge/R-4.0+-blue.svg)](https://www.r-project.org/)
[![Cell Reports](https://img.shields.io/badge/Cell%20Reports-Cell%20Press-red.svg)](https://doi.org/10.1016/j.celrep.2022.111891)
[![DOI: 10.1016/j.celrep.2022.111891](https://img.shields.io/badge/DOI-10.1016%2Fj.celrep.2022.111891-green.svg)](https://doi.org/10.1016/j.celrep.2022.111891)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Bioconductor](https://img.shields.io/badge/Bioconductor-3.14+-lightgrey.svg)](https://bioconductor.org/)

---

## 📖 Paper Information & Citation

This repository provides the complete analytical pipeline, scripts, and processed data structures used in:

> **Gu, Yayun, Yan Zhou, Sihan Ju, Xiaofei Liu, Zicheng Zhang, Jia Guo, Jimiao Gao, Jie Zang, Hao Sun, Qi Chen, Jinghan Wang, Jiani Xu, Yiqun Xu, Yingjia Chen, Yueshuai Guo, Juncheng Dai, Hongxia Ma, Cheng Wang, Guangfu Jin, Chaojun Li, Yankai Xia, Hongbing Shen, Yang Yang, Xuejiang Guo, and Zhibin Hu.**  
> *"Multi-omics profiling visualizes dynamics of cardiac development and functions."*  
> **Cell Reports** 41, no. 13 (December 27, 2022): 111891.  
> 🔗 **DOI**: [https://doi.org/10.1016/j.celrep.2022.111891](https://doi.org/10.1016/j.celrep.2022.111891)

```bibtex
@article{gu2022multiomics,
  title={Multi-omics profiling visualizes dynamics of cardiac development and functions},
  author={Gu, Yayun and Zhou, Yan and Ju, Sihan and Liu, Xiaofei and Zhang, Zicheng and Guo, Jia and Gao, Jimiao and Zang, Jie and Sun, Hao and Chen, Qi and others},
  journal={Cell Reports},
  volume={41},
  number={13},
  pages={111891},
  year={2022},
  publisher={Elsevier},
  doi={10.1016/j.celrep.2022.111891}
}
```

---

## 🌟 Key Highlights

Cardiogenesis is a tightly regulated dynamic process through a continuum of differentiation and proliferation events. This study presents a 4-layer multi-omics panoramic landscape of developing mouse hearts spanning **10 consecutive developmental stages** from early embryo to adult:

1. **4-Dimensional Spatiotemporal Profiling**:
   - Integrated profiling across **Transcriptome**, **Proteome**, **Phosphoproteome**, and **Metabolome** at E10.5, E12.5, E14.5, E16.5, E18.5, P1, 1W, 2W, 4W, and 8W.
2. **Kinase Signaling & Phenotype Switching**:
   - Uncovered the functional balance between **AKT** and **MAPK** signaling pathways in governing cardiac maturation.
   - Identified MAPKs as core kinases mediating phosphorylation of chromatin remodeling proteins during early cardiogenesis.
3. **Epigenomic Regulatory Circuits (TFRE)**:
   - Constructed reciprocal transcription factor (TF) regulatory networks via transcription factor response element (TFRE) analysis and topological hub ranking (Cytohubba), identifying master regulators of cycle-dependent cardiomyocyte proliferation.
4. **Postnatal Efferocytosis by Cardiac Resident Macrophages**:
   - Characterized MHC-II$^+$ resident macrophages exhibiting heightened arachidonic acid (AA) metabolism involved in the clearance of apoptotic cardiomyocytes after birth.

---

## 🏗️ Repository Architecture

The codebase is modularized by publication figures, containing self-contained R Markdown notebooks (`.Rmd`) and intermediate data:

```text
2019_MoAMCD/
├── SourceData/                                      # Processed omics matrices & RDS datasets
│   ├── omic_data.Rds                                # Combined Transcriptome, Proteome & Phosphoproteome
│   ├── proteome_raw.Rds                             # Raw proteome abundance data
│   ├── phosphoproteome_raw.Rds                      # Raw phosphoproteome quantification
│   ├── mfuzz_result.Rds                             # Mfuzz soft-clustering model results
│   └── Data Generation.R                            # Preprocessing & matrix assembly pipeline
├── Figure 1 Multi-omic Landscape.../                # Figure 1: Global multi-omic overview & PCA
│   └── Figure 1.Rmd
├── Figure 2 Temporal Profiling.../                  # Figure 2: Dynamic temporal trajectory & Mfuzz clusters
│   └── Figure 2.Rmd
├── Figure 3 Enriched Key Pathways.../               # Figure 3: Multi-omic pathway enrichment & Cytoscape inputs
│   ├── Figure 3.Rmd
│   └── Network Input/                               # Node & link edge tables for cross-omic networks
├── Figure 4 Phosphoproteomic Analysis.../           # Figure 4: Kinase activity & KSP-PUEL / iGPS predictions
│   ├── Figure 4.Rmd
│   ├── iGPS 1.0 Output/                             # Kinase-substrate interaction predictions
│   ├── KSP-PUEL Output/                             # Machine learning kinase predictions (MAPKs, AKTs, etc.)
│   └── MAPK Substrate Annotation/                   # Chromatin & TF annotation tables
├── Figure 5 Epigenomic Approaches.../               # Figure 5: TFRE epigenomics & master TFs identification
│   ├── Figure 5.Rmd
│   ├── Cytohubba Result.csv                         # Network topological centrality scores
│   └── Annotations of TFs/                          # TF gene essentiality and pLI constraint scores
├── Figure 6 Integrative Analysis.../                # Figure 6: Phospho-signaling & transcriptional crosstalk
│   ├── Figure 6.Rmd
│   └── STRING Output.txt                            # Protein-protein interaction network
├── Figure S1&2 Summary of Transcriptome.../         # Supplementary Figures S1 & S2: QC & validation
│   └── Figure S1&2.Rmd
├── install_packages.R                               # Automated R dependency installation script
├── .gitignore                                       # Git ignore rules for RStudio & cache
├── LICENSE                                          # MIT Open Source License
└── README.md                                        # Project documentation (this file)
```

---

## ⚡ Getting Started & Prerequisites

### 1. Requirements
- **R** >= 4.0.0 (Recommended: R 4.2+)
- **RStudio** (Optional, for interactive notebook execution)

### 2. Dependency Installation

Run the provided `install_packages.R` script in R or RStudio to automatically install all required CRAN and Bioconductor packages:

```R
source("install_packages.R")
```

#### Core Package Dependencies:
- **Bioconductor**: `clusterProfiler`, `org.Mm.eg.db`, `Mfuzz`, `limma`, `ggseqlogo`
- **CRAN**: `ggplot2`, `dplyr`, `reshape2`, `pheatmap`, `RColorBrewer`, `ggpubr`, `ggrepel`, `ggsci`, `viridis`, `scales`, `magrittr`, `ggExtra`, `scatterplot3d`, `networkD3`, `VennDiagram`, `ape`

---

## 🔬 Figure-by-Figure Reproduction Guide

| Section | Target Analysis | Main Outputs |
| :--- | :--- | :--- |
| **`Figure 1.Rmd`** | Multi-omic data integration & quality control | Global PCA trajectory, sample correlation heatmaps, cross-stage reproducibility. |
| **`Figure 2.Rmd`** | Temporal dynamic expression patterns | 12 Mfuzz temporal clusters across 3 omics, discordance vs concordance between mRNA & protein. |
| **`Figure 3.Rmd`** | Cross-omics pathway enrichment | Dynamic metabolic & signaling pathway transitions; Sankey / Cytoscape network input generation. |
| **`Figure 4.Rmd`** | Phosphoproteome & Machine Learning Kinase Mining | iGPS 1.0 kinase activity scoring, KSP-PUEL prediction of MAPK / AKT / CDK substrates, chromatin remodeling phosphorylation. |
| **`Figure 5.Rmd`** | Epigenomic TF regulatory network | High-throughput TFRE binding dynamics, Cytohubba MCC hub TF selection, single-cell/nucleus cardiac matching. |
| **`Figure 6.Rmd`** | Integrative phospho-transcriptional signaling | STRING interaction network linking MAPK kinases to early cardiac TFs. |
| **`Figure S1&2.Rmd`** | Supplementary QC and validation | In-depth batch assessment, technical replicate consistency, and multi-omic coverage statistics. |

---

## 📊 Data Availability

Processed dataset objects are stored in the `SourceData/` directory:
- **`omic_data.Rds`**: Normalized and structured FPKM/abundance matrices for Transcriptome (`mmu_heart_trs`), Proteome (`mmu_heart_pro`), and Phosphoproteome (`mmu_heart_phos`, `mmu_heart_phos_raw`).
- **`proteome_raw.Rds`** & **`phosphoproteome_raw.Rds`**: Raw peptide quantification matrices.
- **`mfuzz_result.Rds`**: Precomputed temporal clustering memberships across time points.

Raw sequencing data and mass spectrometry raw files are deposited in public repositories as specified in the *Cell Reports* publication.

---

## 📜 License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

## 🤝 Acknowledgments

This research was conducted at the **State Key Laboratory of Reproductive Medicine, Center for Global Health, Nanjing Medical University**, in collaboration with Huashan Hospital, Fudan University.
