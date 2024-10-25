onerror {quit -f}
vlib work
vlog -work work Square-root_approximation.vo
vlog -work work Square-root_approximation.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Square-root_approximation_vlg_vec_tst
vcd file -direction Square-root_approximation.msim.vcd
vcd add -internal Square-root_approximation_vlg_vec_tst/*
vcd add -internal Square-root_approximation_vlg_vec_tst/i1/*
add wave /*
run -all
