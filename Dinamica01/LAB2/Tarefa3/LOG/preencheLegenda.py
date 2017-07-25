#! /usr/bin/python3

# On Linux - Instale esses módulos antes de executar esse script
#	sudo pip3 install python3-xlib
#	sudo apt-get install scrot
#	sudo apt-get install python3-tk
#	sudo apt-get install python3-dev



## 
#  Nesse problema, é gerado um único cristal
# e a variação é decorrente do número de pas-
# sos da simulação.
##
import pyautogui
import time
import sys


pyautogui.PAUSE = 0.5
pyautogui.FAILSAFE = True

def digita(texto):
	time.sleep(0.01)
	pyautogui.typewrite(str(texto))
	pyautogui.press('enter')




# Configurando o problema
temperaturas = ["0.7", "0.8", "0.95", "1.1", "1.2"]
passos = ["10.000","20.000","40.000","80.000"]

aPlotar = True
for t in temperaturas:
	for p in passos:	
		aPlotar = True
		texto = "Energia Potencial "+str(t)+" - "+str(p)+" passos"
		while(aPlotar):
			input("Colar : "+texto)
		
	                # Inicia digitação
			time.sleep(1)
			# pyautogui.hotkey('altleft','tab')
			digita(texto)
			aPlotar = False

print("Fim")




