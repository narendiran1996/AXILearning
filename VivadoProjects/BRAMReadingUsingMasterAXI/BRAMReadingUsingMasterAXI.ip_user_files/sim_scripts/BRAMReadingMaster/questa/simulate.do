onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib BRAMReadingMaster_opt

do {wave.do}

view wave
view structure
view signals

do {BRAMReadingMaster.udo}

run -all

quit -force
