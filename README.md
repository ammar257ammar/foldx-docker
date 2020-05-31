# FoldX docker

This repository is part of the "Pocket SNPs effect on protein-ligand Binding Affinity Prediction (PSBAP)" project and it is a submodule of the main repository 

https://github.com/ammar257ammar/pocket-snps-effect-binding-affinity

Please prepare and build the docker using the following instruction and refer back to the previous link for proper usage in the context of PSBAP project.

### First, clone this repository, then follow next! 

### Download FoldX

1. Register to the FoldX website for academic license for FoldX software: 

   http://foldxsuite.crg.eu/academic-license-info

2. Login in with the obtained account and go to download from the previous link.

3. A link with download URL will be emailed to you.

4. Click on the link in the email and you will be directed to the downloads page.

5. Go to the section "FoldX Suite 5.0 Downloads" in the downloads page.

6. Download the file "Executable Foldx5 - Linux 64bits"

7. Unpack the downloaded file and move the "foldx" file to the cloned repository folder (put it next to Dockerfile)

8. Go to the cloned repository folder "psbap-foldx" with "cd" command and follow the instructions in the next section

### Build the Docker image

docker build -t psbap-foldx .

#### Now you are ready! 

#### Go back to [Main Project](https://github.com/ammar257ammar/pocket-snps-effect-binding-affinity) for proper usage of the Docker image.













