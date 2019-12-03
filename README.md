
build the docker 

sudo docker build -t foldx .


Open bash 

sudo docker run -it -v /home/apc/pdb:/pdb --entrypoint /bin/bash foldx 


run the docker

sudo docker run -v /home/apc/pdb:/pdb foldx RepairPDB 1utn_protein.pdb


docker run -it -v /media/apc/DATA1/Internship/processing/foldx:/pdb foldx RepairPDB 10

docker run -it -v /media/apc/DATA1/Internship/processing/foldx:/pdb foldx BuildModel 10



