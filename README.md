
build the docker 

sudo docker build -t foldx .


Open bash 

sudo docker run -it -v /home/apc/pdb:/pdb --entrypoint /bin/bash foldx 


run the docker

sudo docker run -v /home/apc/pdb:/pdb foldx RepairPDB 1utn_protein.pdb


# this one took on OpenShift (122 threads) Completed, ran for 14 minutes, 56 seconds
docker run -it -v /media/apc/DATA1/Internship/processing/foldx:/pdb foldx RepairPDB 10


# this one took on OpenShift (122 threads) Completed, ran for 3 hours, 24 minutes
docker run -it -v /media/apc/DATA1/Internship/processing/foldx:/pdb foldx BuildModel 10




 grep -r -n "rror" ./**/input/log.txt
 grep -r -n "not found" ./**/output/log.txt


find . -type d -name 'molecules' 

find . -type d -name 'molecules' -delete

find . -type f -name 'rotabase.txt'

find . -type f -name 'rotabase.txt' -delete
