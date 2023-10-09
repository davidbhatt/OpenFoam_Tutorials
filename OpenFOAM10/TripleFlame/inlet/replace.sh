wolframscript -file inlet.math
./plot.sh
display inlet.png
echo " generating species files"
./f2o.sh
#copy
cp ../0/N2 .
./proc.sh N2 n2.dat >mN2
cp mN2 ../0/N2

cp ../0/CH4 .
./proc.sh CH4 ch4.dat>mCH4
cp mCH4 ../0/CH4

cp ../0/O2 .
./proc.sh O2 o2.dat >mO2
cp mO2 ../0/O2

rm mN2 mCH4  mO2  N2 CH4  O2
rm ch4.dat o2.dat  n2.dat
