rm energia_Al.dat
for a in 3.92 3.96 3.98 4.00 4.02 4.06 4.10
#for a in 1.3 1.4 1.5 1.6 1.7 1.8 1.9 
#for a in 1.3 1.4 1.5 1.52 1.55 1.58 1.6 1.7 1.8 1.9 
do
cat > Al_$a.in<< ! 
Problema 01, a = 1.3 
Al_$a.cry
Al_$a.md1
1
0.0032
0
-1
!

./md1 <Al_$a.in> Al_$a.log 

E=`tail -1 Al_$a.log|cut -d " " -f 19`
echo $a $E >> energia_Al.dat
done
