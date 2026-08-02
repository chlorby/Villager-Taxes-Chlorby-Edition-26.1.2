scoreboard players set #clock_trigger vt_runtime 0

execute if score #last_daytime vt_runtime <= #daytime vt_runtime run function vt:timing/clock_no_wrap
execute if score #last_daytime vt_runtime > #daytime vt_runtime run function vt:timing/clock_wrap

execute if score #clock_trigger vt_runtime matches 1 run function vt:collection/start
