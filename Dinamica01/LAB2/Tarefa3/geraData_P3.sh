if [ -f Problema_$1.dat ]
then
	rm Problema_$1.dat
fi

# A se refere aos valores dos passos de integração.
for a in 2 5 10 50 # milissegundos

do
./md1 <a$a.in> a$a.log 

E=`tail -1 a$a.log|cut -d " " -f 19`
echo $a $E >> Problema_$1.dat
done
