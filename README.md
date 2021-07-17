# PSnpBind FoldX Docker

![GitHub top language](https://img.shields.io/github/languages/top/ammar257ammar/psnpbind-foldx) ![GitHub](https://img.shields.io/github/license/ammar257ammar/psnpbind-foldx) ![GitHub release (latest by date)](https://img.shields.io/github/v/release/ammar257ammar/psnpbind-foldx) [![Dockerhub](https://img.shields.io/badge/Dockerhub-aammar%2Fpsnpbind--foldx-green)](https://hub.docker.com/r/aammar/psnpbind-foldx) ![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/aammar/psnpbind-foldx) [![DOI](https://zenodo.org/badge/224151495.svg)](https://zenodo.org/badge/latestdoi/224151495)

This repository prepares FoldX to be executed against multiple PDB structures in paraller as part of constructing the PSnpBind database.

This repository is part of the "Pocket SNPs Effect On Protein-Ligand Binding Affinity Project (PSnpBind)" project and it is a needed to reproduce the work as described in the main repository 

https://github.com/ammar257ammar/PSnpBind-Build

Please prepare and build the docker using the following instruction and refer back to the previous link for proper usage in the context of PSnpBind project.

### First, clone this repository.

### Second, download FoldX

1. Register to the FoldX website for academic license for FoldX software: 

   http://foldxsuite.crg.eu/academic-license-info

2. Login in with the obtained account and go to download from the previous link.

3. A link with download URL will be emailed to you.

4. Click on the link in the email and you will be directed to the downloads page.

5. Go to the section "FoldX Suite 5.0 Downloads" in the downloads page.

6. Download the file "Executable Foldx5 - Linux 64bits"

7. Unpack the downloaded file and move the "foldx" file to the cloned repository folder (put it next to Dockerfile)

8. Go to the cloned repository folder "psnpbind-foldx" with "cd" command and follow the instructions in the next section

### Build the Docker image

docker build -t psnpbind-foldx .

#### Now you are ready! 

#### Go back to [Main Project](https://github.com/ammar257ammar/pocket-snps-effect-binding-affinity) for proper usage of the Docker image.













