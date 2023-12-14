#for overall stoichiometric  mixture
awk -M -v PREC=100 '{printf("%.18f\n", 0.055187*($1))}' inlet.dat >ch4.dat
awk -M -v PREC=100 '{printf("%.18f\n", 0.217307*(1-$1))}' inlet.dat >o2.dat
awk -M -v PREC=100 '{printf("%.18f\n", 0.727506*(1-$1))}' inlet.dat >n2.dat

