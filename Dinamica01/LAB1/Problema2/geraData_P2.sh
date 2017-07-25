if [ -f Problema_$1.dat ]
then
	rm Problema_$1.dat
fi


for a in 1 2 3 4 5 6 7

do
cat > a$a.in<< ! 
Problema 2
a$a.cry
a$a.md1
1000
0.0032
0
-1
!

./md1 <a$a.in> a$a.log 

E=`tail -1 a$a.log|cut -d " " -f 19`
echo $a $E >> Problema_$1.dat
done
