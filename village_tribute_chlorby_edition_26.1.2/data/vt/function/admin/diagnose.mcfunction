tellraw @s {"text":"--- Village Tribute diagnostic ---","color":"gold"}
function vt:timing/read_clock
tellraw @s [{"text":"Current Overworld day time: "},{"score":{"name":"#daytime","objective":"vt_runtime"},"color":"yellow"}]
tellraw @s [{"text":"Timing mode: "},{"score":{"name":"#timing_mode","objective":"vt_config"}},{"text":"; scheduled time: "},{"score":{"name":"#collection_time","objective":"vt_config"}}]
execute if entity @e[type=minecraft:marker,tag=vt_tribute_barrel] run tellraw @s {"text":"At least one loaded tribute-barrel marker exists in this dimension.","color":"green"}
execute unless entity @e[type=minecraft:marker,tag=vt_tribute_barrel] run tellraw @s {"text":"No loaded tribute-barrel marker exists in this dimension.","color":"red"}
function vt:status
tellraw @s {"text":"Run /function vt:admin/collect_now next to force an immediate collection.","color":"aqua"}
