scoreboard players set #markers_before vt_runtime 0
scoreboard players set #markers_after vt_runtime 0

execute in minecraft:overworld as @e[type=minecraft:marker,tag=vt_tribute_barrel] run scoreboard players add #markers_before vt_runtime 1
execute in minecraft:the_nether as @e[type=minecraft:marker,tag=vt_tribute_barrel] run scoreboard players add #markers_before vt_runtime 1
execute in minecraft:the_end as @e[type=minecraft:marker,tag=vt_tribute_barrel] run scoreboard players add #markers_before vt_runtime 1

function vt:cleanup/deduplicate_all

execute in minecraft:overworld as @e[type=minecraft:marker,tag=vt_tribute_barrel] run scoreboard players add #markers_after vt_runtime 1
execute in minecraft:the_nether as @e[type=minecraft:marker,tag=vt_tribute_barrel] run scoreboard players add #markers_after vt_runtime 1
execute in minecraft:the_end as @e[type=minecraft:marker,tag=vt_tribute_barrel] run scoreboard players add #markers_after vt_runtime 1

scoreboard players operation #markers_removed vt_runtime = #markers_before vt_runtime
scoreboard players operation #markers_removed vt_runtime -= #markers_after vt_runtime

tellraw @s [{"text":"[Villager Taxes] Marker repair complete. Removed ","color":"green"},{"score":{"name":"#markers_removed","objective":"vt_runtime"},"color":"yellow"},{"text":" duplicate tax-barrel marker(s).","color":"green"}]
