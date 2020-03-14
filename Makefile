
FW ?= esp8266-20191220-v1.12.bin

setup: clean deps download

clean:
	rm -rf ./venv ./*.bin

deps:
	sudo echo
	virtualenv -p python3 ./venv ./webrepl_cli
	./venv/bin/pip3 install -r requirements.txt
	cd venv/ && git clone https://github.com/micropython/webrepl.git
	echo "./venv/bin/python venv/webrepl/webrepl_cli.py \$@" > webrepl_cli
	chmod +x ./webrepl_cli
	sudo apt install -y picocom

download:
	wget https://micropython.org/resources/firmware/${FW}

reset:
	./venv/bin/esptool.py --port /dev/ttyUSB0 erase_flash

write:
	./venv/bin/esptool.py --port /dev/ttyUSB0 --baud 1000000 write_flash --flash_size=4MB -fm dio 0 ${FW}

repl:
	picocom /dev/ttyUSB0 -b115200

webrepl:
	xdg-open http://micropython.org/webrepl
