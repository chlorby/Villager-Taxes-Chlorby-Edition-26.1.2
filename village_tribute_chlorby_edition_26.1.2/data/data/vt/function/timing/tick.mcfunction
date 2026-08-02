function vt:timing/read_clock

execute if score #timing_mode vt_config matches 0 run function vt:timing/interval
execute if score #timing_mode vt_config matches 1 run function vt:timing/clock

scoreboard players operation #last_daytime vt_runtime = #daytime vt_runtime
