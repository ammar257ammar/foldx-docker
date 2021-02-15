#!/bin/bash

COMMAND=$1
PDB=$2

cd /pdb
	
if [ "$COMMAND" == "RepairPDB" ]; then

	cd $PDB

	/foldx/foldx --command=RepairPDB --pdb=${PDB}_protein.pdb --ionStrength=0.05 --pH=7 --water=CRYSTAL --vdwDesign=2 --pdbHydrogens=false --output-dir=./input --rotabaseLocation=/foldx/rotabase.txt > ./input/log.txt

	cd ..

elif [ "$COMMAND" == "BuildModel" ]; then

	cd $PDB/input

	cp ${PDB}_protein_Repair.pdb ../output/${PDB}_protein_Repair_WT.pdb

	/foldx/foldx --command=BuildModel --pdb=${PDB}_protein_Repair.pdb --mutant-file=individual_list.txt --ionStrength=0.05 --pH=7 --water=CRYSTAL --vdwDesign=2 --output-dir=../output --out-pdb=true --pdbHydrogens=false --numberOfRuns=1 > ../output/log.txt  

	cd ../output

	for p in *.pdb; do

		folder="${p%.*}"

		mkdir -p $folder
	
		cp ${p} ${folder}/${p}

	done 

	cd ../..

fi
