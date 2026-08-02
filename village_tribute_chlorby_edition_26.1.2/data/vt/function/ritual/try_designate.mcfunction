execute if block ~ ~1 ~ minecraft:bell if entity @e[type=minecraft:marker,tag=vt_tribute_barrel,distance=..1] run function vt:ritual/already_designated
execute if block ~ ~1 ~ minecraft:bell unless entity @e[type=minecraft:marker,tag=vt_tribute_barrel,distance=..1] run function vt:ritual/designate
