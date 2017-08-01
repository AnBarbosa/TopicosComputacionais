#! /usr/bin/python3

print("Starting")
base = 'base.in'
nome = 'novo_teste.in'

base = open(base, 'r')
arquivo = open(nome, 'w')


linhas = base.readlines()
for linha in linhas:
    arquivo.write(linha)

arquivo.close()



print("Done")
