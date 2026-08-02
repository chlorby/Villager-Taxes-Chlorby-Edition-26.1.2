scoreboard players set #warning_counter vt_runtime 0
execute if score #missing_warnings vt_config matches 1 as @a[scores={vt_warn=..0}] at @s run function vt:warning/check_radius_dispatch
