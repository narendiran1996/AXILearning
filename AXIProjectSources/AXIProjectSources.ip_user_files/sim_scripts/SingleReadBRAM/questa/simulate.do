onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib SingleReadBRAM_opt

do {wave.do}

view wave
view structure
view signals

do {SingleReadBRAM.udo}

run -all

quit -force
