printf "Processando "
for filename in *.in

do

saida="${filename%.*}"
../md1 <$filename> $saida.log
printf "."

done

echo ""
echo "Fim"
