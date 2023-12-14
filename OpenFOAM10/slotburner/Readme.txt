This solves combustion problem wherein inlet is suppplied with fuel
and co flow of air is supplied. The diffussion flame with unmixed co-flow reactants. 
these mix and burn in domain forming so called lifted flame with edge flames near the slots:
The flow and reactions are solved for given domain and mesh in blockMeshDict
So for this case one may directly generate mesh using
blockMesh
reactingFoam

To generate new profiles for other values of mesh and premixedness follow steps:
1) To determine the profile first generate inlet mesh using script
./gen_y_inlet.sh
2) then generate profile and replace current by
cd inlet
./replace.txt
see readme of inlet folder to run this succesfully



