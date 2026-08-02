tellraw @s {"text":"--- Villager Taxes status ---","color":"gold"}
function vt:timing/read_clock
tellraw @s [{"text":"Minecraft day: "},{"score":{"name":"#current_day","objective":"vt_runtime"},"color":"yellow"},{"text":"; day time: "},{"score":{"name":"#daytime","objective":"vt_runtime"},"color":"yellow"}]
tellraw @s [{"text":"Collection mode: "},{"score":{"name":"#timing_mode","objective":"vt_config"}},{"text":"; scheduled time: "},{"score":{"name":"#collection_time","objective":"vt_config"}}]

execute if entity @e[type=minecraft:marker,tag=vt_tribute_barrel] run tellraw @s {"text":"A loaded tax barrel is present in this dimension.","color":"green"}
execute unless entity @e[type=minecraft:marker,tag=vt_tribute_barrel] run tellraw @s {"text":"No loaded tax barrel is present in this dimension.","color":"red"}

function vt:status
