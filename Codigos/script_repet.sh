rm energia.dat cinetica.dat potencial.dat temperatura.dat pressao.dat
for a in 1 2 3 4 5 6 7 
do
#cat > cel$a$a$a.in<< ! 
#Problema 01, a = 1.3 
#cel$a$a$a.cry
#cel$a$a$a.md1
#1000
#0.0032
#0
#-1
#!

#./md1 <cel$a$a$a.in> cel$a$a$a.log 

E=`tail -1 cel$a$a$a.log|cut -d " " -f 24`
K=`tail -1 cel$a$a$a.log|cut -d " " -f 14`
H=`tail -1 cel$a$a$a.log|cut -d " " -f 19`
T=`tail -1 cel$a$a$a.log|cut -d " " -f 8`
P=`tail -1 cel$a$a$a.log|cut -d " " -f 30`
echo $a $E >> energia.dat
echo $a $K >> cinetica.dat 
echo $a $H >> potencial.dat
echo $a $T >> temperatura.dat
echo $a $P >> pressao.dat
done
