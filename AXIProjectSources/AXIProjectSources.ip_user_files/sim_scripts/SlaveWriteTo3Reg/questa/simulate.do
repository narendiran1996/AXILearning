onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib SlaveWriteTo3Reg_opt

do {wave.do}

view wave
view structure
view signals

do {SlaveWriteTo3Reg.udo}

run -all

quit -force
