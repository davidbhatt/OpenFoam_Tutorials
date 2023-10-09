The program here generates the concentration profiles for inlet corresponding to a particular value of premixedness
for theory and definition of premixedness refer
  David S. Bhatt, S.R. Chakravarthy (2012) Nonlinear dynamical behaviour of intrinsic thermal-diffusive oscillations of
  laminar flames with varying premixedness, Combustion and Flame, 159(6), p 2115-2125.
  https://doi.org/10.1016/j.combustflame.2012.01.025
in order to generate the species concentration for specific value of premixedness
change the appripriate values of
1) ymax (max value in either direction)
2) premixesness zeta 
use script
./replace.sh

for generating mixture fraction mathematica with wolframscript is must

the description of subscripts are:

inlet.math  wolfram script to generate the mixture fraction profile along the inlet (in y direction using points in y.dat) and stores profile in inlet.dat
f2o.sh   bash scirpt to generate the species concentration for overall stoichiometric using the mixture fraction profile in inlet.dat
proc.sh  replaces the profile points in boundary condition of species CH4, N2 and O2
