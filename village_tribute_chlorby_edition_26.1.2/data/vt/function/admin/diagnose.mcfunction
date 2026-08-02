tellraw @s {"text":"--- Villager Taxes diagnostic ---","color":"gold"}
function vt:timing/read_clock
tellraw @s [{"text":"Current Overworld day time: "},{"score":{"name":"#daytime","objective":"vt_runtime"},"color":"yellow"}]
tellraw @s [{"text":"Timing mode: "},{"score":{"name":"#timing_mode","objective":"vt_config"}},{"text":"; scheduled time: "},{"score":{"name":"#collection_time","objective":"vt_config"}}]
tellraw @s [{"text":"Current Minecraft day: "},{"score":{"name":"#current_day","objective":"vt_runtime"},"color":"yellow"},{"text":"; last automatic collection day: "},{"score":{"name":"#last_auto_day","objective":"vt_runtime"},"color":"yellow"}]
execute if entity @e[type=minecraft:marker,tag=vt_tribute_barrel] run tellraw @s {"text":"At least one loaded taxes-barrel marker exists in this dimension.","color":"green"}
execute unless entity @e[type=minecraft:marker,tag=vt_tribute_barrel] run tellraw @s {"text":"No loaded taxes-barrel marker exists in this dimension.","color":"red"}
function vt:status
tellraw @s {"text":"Run /function vt:admin/collect_now next to force an immediate collection.","color":"aqua"}
