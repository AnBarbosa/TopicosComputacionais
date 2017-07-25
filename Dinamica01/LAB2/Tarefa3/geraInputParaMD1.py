#! /usr/bin/python3

def geraIN(nomeIN, comentario, entrada, saida, passos, valorDoPasso, densidade, temperatura):
    arquivo = open(nomeIN, 'w')
    arquivo.write(str(comentario)+"\n")
    arquivo.write(str(entrada)+"\n")
    arquivo.write(str(saida)+"\n")
    arquivo.write(str(passos)+"\n")
    arquivo.write(str(valorDoPasso)+"\n")
    arquivo.write(str(densidade)+"\n")
    arquivo.write(str(temperatura)+"\n")
    arquivo.close()


_nome_arquivo_in = 	"T"    
_comentario = 		"Lab2 Tarefa 3: Dens = 0.9, Temp = "
_entrada = 		"coordenadas.cry"
_saida = 		"coordenadas.md1"
_passos = 		[10000, 20000, 40000, 80000]
_valor_do_passo = 	0.0025
_densidade = 		0.9
_temperatura = 		[0.7, 0.8, 0.95, 1.10, 1.20]

for temp in _temperatura:
    for passo in _passos:
        nome = _nome_arquivo_in+str(temp)+"_"+str(passo)+".in"
        comentario = _comentario+str(temp)+" Passo = "+str(passo)
        print("Gravando "+str(nome))
        geraIN(nome,
               comentario,
               _entrada,
               _saida,
               passo,
               _valor_do_passo,
               _densidade,
               temp)
    
print("Done")
