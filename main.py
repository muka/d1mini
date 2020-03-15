
import esp
import machine


def run():
    print("machineID " + str(esp.flash_id()))

    # read analog
    adc = machine.ADC(0)

    while True:
        val = adc.read()
        print("ADC value " + str(val))


if __name__ == '__main__':
    run()
