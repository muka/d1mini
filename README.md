# d1 mini with micropython setup

- `make setup` to install dependencies and download a firmware (see Makefile to update version)
- `make reset write` to reset and write the firmware
- `make repl` connect to the COM on `/dev/ttyUSB0`


## Development

To run a script on the board use `./pyboard  <file.py> `

`./pyboard  mymod.py `

Once the code is robust to be deployed, copy the file with

`./webrepl_cli <file.py> 192.168.4.1:/<file.py>`

To have it running when device boot, copy the `boot.py` file from device and add your module call(s)
