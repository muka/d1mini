
FW ?= esp8266-20191220-v1.12.bin

setup:
	virtualenv -p python3 ./venv
	./venv/bin/pip3 install -r requirements.txt
	sudo apt install -y picocom

download:
	wget https://micropython.org/resources/firmware/${FW}

reset:
	./venv/bin/esptool.py --port /dev/ttyUSB0 erase_flash

write:
	./venv/bin/esptool.py --port /dev/ttyUSB0 --baud 1000000 write_flash --flash_size=4MB -fm dio 0 ${FW}

repl:
	picocom /dev/ttyUSB0 -b115200
