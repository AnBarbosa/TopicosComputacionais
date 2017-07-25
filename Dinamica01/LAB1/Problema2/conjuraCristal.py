#! /usr/bin/python3

# On Linux - Instale esses módulos antes de executar esse script
#	sudo pip3 install python3-xlib
#	sudo apt-get install scrot
#	sudo apt-get install python3-tk
#	sudo apt-get install python3-dev

import pyautogui
import time
pyautogui.PAUSE = 0.5
pyautogui.FAILSAFE = True

lattice = 1.55
celulas = 2
deslocamento = 0.01

def digita(texto):
	time.sleep(0.01)
	pyautogui.typewrite(str(texto))
	pyautogui.press('enter')


pyautogui.hotkey('altleft','tab')


for i in range(1, 8): # [1, 2... 7] < o range não executa o último número(8)
	celulas = i
	digita("./crystal")

	digita("1")

	digita(lattice)

	digita(celulas)
	digita(celulas)
	digita(celulas)

	digita(deslocamento)

	nome = "a"+str(i)+".cry"

	digita(nome)
digita("echo \"Fim do processo\"")
print("Fim do processo")
