for a in 0.90 0.92 0.98 1.02 
do
	for b in 10000 12000 14000 16000 18000 20000   
	do
		c=`echo "scale=5; 50/$b"|bc`
		cat > 'Temp'$a'_passo'$b.in<< ! 
		Problema densidade Temp 
		coordenadas.cry
		Temp$a_passo$b.md1
		$b
		$c
		0.9
		$a
		!
		./md1 <'Temp'$a'_passo'$b.in> 'Temp'$a'_passo'$b.log

		E=`tail -1 'Temp'$a'_passo'$b.log|cut -d " " -f 19`
		echo $b $E >> energia_Temp$a.dat
	done
done
