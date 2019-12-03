#!/bin/bash

COMMAND=$1
THREADS=$2

cd /pdb


counter=0

for f in *; do

	
	if [[ "$counter" -lt $THREADS ]]; then

		counter=$((counter+1))

		if [ "$COMMAND" == "RepairPDB" ]; then

			cd $f
	
			/foldx/foldx --command=RepairPDB --pdb=${f}_protein.pdb --ionStrength=0.05 --pH=7 --water=CRYSTAL --vdwDesign=2 --pdbHydrogens=false --output-dir=./input --rotabaseLocation=/foldx/rotabase.txt > ./input/log.txt &

			cd ..

		elif [ "$COMMAND" == "BuildModel" ]; then

			cd $f/input
	
			/foldx/foldx --command=BuildModel --pdb=${f}_protein_Repair.pdb --mutant-file=individual_list.txt --ionStrength=0.05 --pH=7 --water=CRYSTAL --vdwDesign=2 --output-dir=../output --out-pdb=true --pdbHydrogens=false --numberOfRuns=1 > ../output/log.txt &

			cd ../..
		fi

	else
	
		counter=0
		
		wait
	fi

done




