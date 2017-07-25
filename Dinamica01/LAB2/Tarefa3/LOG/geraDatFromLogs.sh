printf "Processando "
for filename in *.log

do

saida="${filename%.*}"
E=`tail -1 $filename|cut -d " " -f 19`
echo $E >> $saida.dat

printf "."
done

echo ""
echo "Fim"
