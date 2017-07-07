#!/bin/bash
echo ""
 function criaDir {
	if [ ! -d Older ]; then
		echo "Older não existe"
		mkdir Older
	fi

}

function moveData { 
	if [ -f AndreALLData.dat ]; then
		echo "Movendo antigo AndreALLData.dat para older"
		mv AndreALLData.dat ./Older/
	fi

}



criaDir
moveData

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
echo $a $E >> AndreALLData.dat
done

if [ -f AndreALLData.dat ]; then 
	echo "AndreALLData.dat criado"
	if  grep -Fx "AndreAXD" AndreALLData.dat 
	then
		echo "Grep"
	else
		echo "No grep"
	fi

else echo "Erro ao criar AndreALLData.dat"

fi

echo ""
echo ""

