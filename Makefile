bin=nodemcu-19-modules-firmware-float
file=init.lua

run:
	nodemcu-tool upload ${file}
	nodemcu-tool run ${file}

flash:
	esptool.py --port /dev/ttyUSB0 write_flash -fm dio 0x000000 bin/${bin}.bin

install:
	pip install --user esptool
	npm -g nodemcu-tool
