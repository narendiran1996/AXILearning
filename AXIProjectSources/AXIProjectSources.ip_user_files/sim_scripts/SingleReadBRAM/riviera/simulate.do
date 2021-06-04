onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+SingleReadBRAM -L xil_defaultlib -L xpm -L axi_bram_ctrl_v4_1_1 -L blk_mem_gen_v8_4_3 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.SingleReadBRAM xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {SingleReadBRAM.udo}

run -all

endsim

quit -force
