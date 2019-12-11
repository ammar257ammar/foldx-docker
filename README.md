
#build the docker 
sudo docker build -t foldx .


########################################################### New implementation using Java ###################################################################


docker run -it -v /media/apc/DATA1/Internship/processing/foldx:/pdb foldx RepairPDB 10

docker run -it -v /media/apc/DATA1/Internship/processing/foldx:/pdb foldx BuildModel 10













