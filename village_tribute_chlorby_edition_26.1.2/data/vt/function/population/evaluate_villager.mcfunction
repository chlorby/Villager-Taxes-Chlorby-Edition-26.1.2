scoreboard players operation @s vt_counttick = #recount_gametime vt_runtime
scoreboard players set @s vt_temp 1

execute if score #count_babies vt_config matches 0 if predicate vt:is_baby run scoreboard players set @s vt_temp 0
execute if score #count_unemployed vt_config matches 0 if entity @s[nbt={VillagerData:{profession:"minecraft:none"}}] run scoreboard players set @s vt_temp 0
execute if score #count_nitwits vt_config matches 0 if entity @s[nbt={VillagerData:{profession:"minecraft:nitwit"}}] run scoreboard players set @s vt_temp 0

execute if score @s vt_temp matches 1 run function vt:population/assign_by_radius
