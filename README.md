
#build the docker 
sudo docker build -t foldx .


#Open bash 
sudo docker run -it -v /home/apc/pdb:/pdb --entrypoint /bin/bash foldx 


#run the docker
sudo docker run -v /home/apc/pdb:/pdb foldx RepairPDB 1utn_protein.pdb


# this one took on OpenShift (122 threads) Completed, ran for 14 minutes, 56 seconds
docker run -it -v /media/apc/DATA1/Internship/processing/foldx:/pdb foldx RepairPDB 10


# this one took on OpenShift (122 threads) Completed, ran for 3 hours, 24 minutes
docker run -it -v /media/apc/DATA1/Internship/processing/foldx:/pdb foldx BuildModel 10


#String and file names matching
grep -r -n "rror" ./**/input/log.txt
grep -r -n "not found" ./**/output/log.txt


find . -type d -name 'molecules' 

find . -type d -name 'molecules' -delete

find . -type f -name 'rotabase.txt'

find . -type f -name 'rotabase.txt' -delete

find . -type f -name "*.java" -print0 | xargs -I {} -0 grep "CORESET_" "{}"

#Running pods on OpenShift
cd /media/apc/DATA1/Internship/Tools/foldx-docker/Jobs/RepairPDB
oc create -f foldx1-coreset-residues-job.yaml
oc create -f foldx1-coreset-resolution-job.yaml
oc create -f foldx1-refinedset-residues-job.yaml   #Completed, ran for 1 hour, 38 minutes
oc create -f foldx1-refinedset-resolution-job.yaml #Completed, ran for 1 hour, 38 minutes
oc create -f foldx1-generalset-residues-job.yaml   #Completed, ran for 3 hours, 16 minutes
oc create -f foldx1-generalset-resolution-job.yaml #Completed, ran for 4 hours, 9 minutes

cd /media/apc/DATA1/Internship/Tools/foldx-docker/Jobs/BuildModel
oc create -f foldx2-coreset-residues-job.yaml
oc create -f foldx2-coreset-resolution-job.yaml
oc create -f foldx2-refinedset-residues-job.yaml 
oc create -f foldx2-refinedset-resolution-job.yaml
oc create -f foldx2-generalset-residues-job.yaml
oc create -f foldx2-generalset-resolution-job.yaml


oc delete -f foldx2-coreset-residues.yaml
oc delete -f foldx2-coreset-resolution.yaml
oc delete -f foldx2-refinedset-residues.yaml 
oc delete -f foldx2-refinedset-resolution.yaml
oc delete -f foldx2-generalset-residues.yaml
oc delete -f foldx2-generalset-resolution.yaml
