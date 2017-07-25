if [ -f Problema_$1.dat ]
then
	rm Problema_$1.dat
fi

#for a in 3.92 3.96 3.98 4.00 4.02 4.06 4.10
for a in 1.3 1.4 1.5 1.6 1.7 1.8 1.9 
#for a in 1.3 1.4 1.5 1.52 1.55 1.58 1.6 1.7 1.8 1.9 
do
cat > a$a.in<< ! 
Problema $1, a = 1.3 
a$a.cry
a$a.md1
1
0.0032
0
-1
!

./md1 <a$a.in> a$a.log 

E=`tail -1 a$a.log|cut -d " " -f 19`
echo $a $E >> Problema_$1.dat
done
