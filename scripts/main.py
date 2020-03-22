
import esp
import machine
import uasyncio as asyncio


def run():
    print("machineID " + str(esp.flash_id()))

#     loop = asyncio.get_event_loop()
#     loop.run_until_complete(read())
#
#
# async def read():
#     # read analog
#     adc = machine.ADC(0)
#     while True:
#         val = adc.read()
#         print("ADC value " + str(val))
#         await asyncio.sleep(1)


if __name__ == '__main__':
    run()
