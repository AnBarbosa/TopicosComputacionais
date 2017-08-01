#! /usr/bin/python3

import re, os

from subprocess import Popen, PIPE

arquivos = ['log1010', 
'log1012',
'log1014',
'log1016',
'log1018',
'log1020',
'log1022',
'log1024',
'log1026']

dat = open('arquivo1.dat', 'w')

for file in arquivos:
    print("Analisando "+file)
    with open(os.path.join('./',file)) as origin:
        for line in origin:
            if (re.findall(r'etotal', line) != []):
                print(line)
                dat.write(line)

dat.close()
print ("Finalizado")
	
	
