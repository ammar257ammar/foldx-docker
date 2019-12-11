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

	/foldx/foldx --command=BuildModel --pdb=${PDB}_protein_Repair.pdb --mutant-file=individual_list.txt --ionStrength=0.05 --pH=7 --water=CRYSTAL --vdwDesign=2 --output-dir=../output --out-pdb=true --pdbHydrogens=false --numberOfRuns=3 > ../output/log.txt   

	cd ../..

fi
