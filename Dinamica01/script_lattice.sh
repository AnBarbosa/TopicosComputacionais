
for a in 1.3 1.4 1.5 1.6 1.7 1.8 1.9 
#for a in 1.3 1.4 1.5 1.52 1.55 1.58 1.6 1.7 1.8 1.9 
do
cat > a$a.in<< ! 
Problema 01, a = 1.3 
a$a.cry
a$a.md1
1
0.0032
0
-1
!

./md1 <a$a.in> a$a.log 

E=`tail -1 a$a.log|cut -d " " -f 19`
echo $a $E >> ARQUIVO.dat
done
