scoreboard players operation #last_recount_gametime vt_runtime = #recount_gametime vt_runtime

execute as @e[type=minecraft:marker,tag=vt_tribute_barrel] run scoreboard players set @s vt_count 0
execute as @e[type=minecraft:villager] at @s unless score @s vt_counttick = #recount_gametime vt_runtime run function vt:population/evaluate_villager
