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
pyautogui.PAUSE = 0.5
pyautogui.FAILSAFE = True

def digita(texto):
	time.sleep(0.01)
	pyautogui.typewrite(str(texto))
	pyautogui.press('enter')



# Configurando o problema
parametro_P1 = 1.55
tamanho_P2 = 4
deslocamento_inicial = 0.01
nomeDoArquivoDeSaida = "amostra.cry"

# Os atributos abaixo são usados para o programa
lattice = parametro_P1
celulas = tamanho_P2
deslocamento = deslocamento_inicial

# Inicia digitação
pyautogui.hotkey('altleft','tab')


digita("./crystal")

digita("1")

digita(lattice)

digita(celulas)
digita(celulas)
digita(celulas)

digita(deslocamento)

nome = nomeDoArquivoDeSaida

digita(nome)

digita("echo \"Fim do processo\"")
print("Fim do processo")
