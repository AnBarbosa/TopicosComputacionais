#! /usr/bin/python3

temposDosPassos = [0.002, 0.005, 0.01, 0.05]
tempoDeIntegracao = 200.00

for T in temposDosPassos:
        valorDoPasso = float(T)
        valorEmMilesimos = int(valorDoPasso*1000)
        passosDeIntegracao = int(tempoDeIntegracao/valorDoPasso)
        print(passosDeIntegracao)
        nomeDoArquivo = "a"+str(valorEmMilesimos)+".in"
        arquivo = open(nomeDoArquivo, "w")
        arquivo.write("Problema 3\n")
        arquivo.write("amostra"+str(valorEmMilesimos)+".cry\n")
        arquivo.write("amostra"+str(valorEmMilesimos)+".md1\n")
        arquivo.write(str(passosDeIntegracao)+"\n")
        arquivo.write(str(T)+"\n")
        arquivo.write("0\n")
        arquivo.write("-1\n")
