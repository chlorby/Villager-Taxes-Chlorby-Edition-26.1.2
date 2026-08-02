scoreboard players add @a vt_warn 0
scoreboard players remove @a[scores={vt_warn=1..}] vt_warn 1

function vt:timing/tick

scoreboard players add #cleanup_counter vt_runtime 1
execute if score #cleanup_counter vt_runtime >= #cleanup_ticks vt_config run function vt:cleanup/run

scoreboard players add #warning_counter vt_runtime 1
execute if score #warning_counter vt_runtime >= #warning_check_ticks vt_config run function vt:warning/check_all

function vt:ritual/scan_dimensions
