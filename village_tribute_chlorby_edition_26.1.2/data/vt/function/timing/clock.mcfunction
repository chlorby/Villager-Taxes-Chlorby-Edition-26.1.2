scoreboard players set #clock_trigger vt_runtime 0

execute if score #last_daytime vt_runtime <= #daytime vt_runtime run function vt:timing/clock_no_wrap
execute if score #last_daytime vt_runtime > #daytime vt_runtime run function vt:timing/clock_wrap

execute if score #clock_trigger vt_runtime matches 1 unless score #last_auto_day vt_runtime = #current_day vt_runtime run function vt:timing/run_auto_collection
