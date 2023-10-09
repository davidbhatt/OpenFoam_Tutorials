This solves combustionn problem wherein inlet is suppplied with concentration profiles
This profile determines premixedness of unburnt reactants
these mix and burn in domain forming so called triple flame:
This example already the profile is generated for given domain and mesh in blockMeshDict and for a premixedness of 0.5
So for this case one may directly generate mesh using
blockMesh
reactingFoam

To generate new profiles for other values of mesh and premixedness follow steps:
1) To determine the profile first generate inlet mesh using script
./gen_y_inlet.sh
2) then generate profile snad replace current by
cd inlet
./replace.txt
see readme of inlet folder to run this succesfully



