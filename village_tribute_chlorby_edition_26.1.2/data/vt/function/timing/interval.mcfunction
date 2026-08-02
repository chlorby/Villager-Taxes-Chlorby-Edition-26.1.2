scoreboard players add #interval_counter vt_runtime 1
execute if score #interval_counter vt_runtime >= #interval_ticks vt_config run function vt:collection/start
execute if score #interval_counter vt_runtime >= #interval_ticks vt_config run scoreboard players set #interval_counter vt_runtime 0
