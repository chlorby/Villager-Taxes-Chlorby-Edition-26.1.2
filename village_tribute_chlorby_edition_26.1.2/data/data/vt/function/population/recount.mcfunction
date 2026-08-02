scoreboard players set @e[type=minecraft:marker,tag=vt_tribute_barrel] vt_count 0
execute as @e[type=minecraft:villager] at @s run function vt:population/evaluate_villager
