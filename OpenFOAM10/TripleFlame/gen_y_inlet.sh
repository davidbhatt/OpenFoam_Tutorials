blockMesh
postProcess -func writeCellCentres
##extract from Cy the y coordinartes
awk '/inlet/ {p=1} /)/ {p=0} p' ./0/Cy |awk 'NR > 6 { print }'> ./inlet/y.dat
