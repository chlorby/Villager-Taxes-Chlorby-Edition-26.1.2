tellraw @s {"text":"--- Villager Taxes diagnostic ---","color":"gold"}
function vt:timing/read_clock
tellraw @s [{"text":"Current Overworld day time: "},{"score":{"name":"#daytime","objective":"vt_runtime"},"color":"yellow"}]
tellraw @s [{"text":"Current Minecraft day: "},{"score":{"name":"#current_day","objective":"vt_runtime"},"color":"yellow"},{"text":"; last automatic collection day: "},{"score":{"name":"#last_auto_day","objective":"vt_runtime"},"color":"yellow"}]
tellraw @s [{"text":"Timing mode: "},{"score":{"name":"#timing_mode","objective":"vt_config"}},{"text":"; scheduled time: "},{"score":{"name":"#collection_time","objective":"vt_config"}}]

execute if entity @e[type=minecraft:marker,tag=vt_tribute_barrel] run tellraw @s {"text":"At least one loaded tax-barrel marker exists in this dimension.","color":"green"}
execute unless entity @e[type=minecraft:marker,tag=vt_tribute_barrel] run tellraw @s {"text":"No loaded tax-barrel marker exists in this dimension.","color":"red"}

tag @a[tag=vt_diagnostic_player] remove vt_diagnostic_player
tag @s add vt_diagnostic_player
execute at @s run function vt:admin/count_nearby_markers
tellraw @s [{"text":"Tax-barrel markers within 2 blocks of you: "},{"score":{"name":"@s","objective":"vt_temp"},"color":"yellow"}]
tag @s remove vt_diagnostic_player

tag @s add vt_diagnostic_player
function vt:status
execute at @s run function vt:admin/report_nearest_taxday
tag @s remove vt_diagnostic_player
tellraw @s {"text":"Version 5 prevents both duplicate tick execution and repeated automatic deposits by the same barrel on one Minecraft day.","color":"aqua"}
