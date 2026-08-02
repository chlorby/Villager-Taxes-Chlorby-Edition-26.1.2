tag @a[tag=vt_status_request] remove vt_status_request
tag @e[type=minecraft:marker,tag=vt_status_target] remove vt_status_target
tag @s add vt_status_request

execute at @s as @e[type=minecraft:marker,tag=vt_tribute_barrel,sort=nearest,limit=1,distance=..128] run tag @s add vt_status_target

execute unless entity @e[type=minecraft:marker,tag=vt_status_target,limit=1] run tellraw @s {"text":"[Villager Taxes] No tax barrel was found within 128 blocks.","color":"red"}

execute if entity @e[type=minecraft:marker,tag=vt_status_target,limit=1] run function vt:population/recount
execute as @e[type=minecraft:marker,tag=vt_status_target,limit=1] at @s run function vt:status/report_barrel
execute if entity @e[type=minecraft:marker,tag=vt_status_target,limit=1] run function vt:status/report_time

tag @e[type=minecraft:marker,tag=vt_status_target] remove vt_status_target
tag @s remove vt_status_request
