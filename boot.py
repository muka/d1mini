# This file is executed on every boot (including wake-boot from deepsleep)
import gc
import machine
import webrepl
# import uos
# import esp

# esp.osdebug(None)
# uos.dupterm(None, 1) # disable REPL on UART(0)

webrepl.start()
gc.collect()
