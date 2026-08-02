tag @e[type=minecraft:marker,tag=vt_remove_target] remove vt_remove_target
execute at @s as @e[type=minecraft:marker,tag=vt_tribute_barrel,sort=nearest,limit=1,distance=..8] run tag @s add vt_remove_target

execute if entity @e[type=minecraft:marker,tag=vt_remove_target,limit=1] run tellraw @s {"text":"[Villager Taxes] The nearest tax barrel was decommissioned.","color":"yellow"}
execute unless entity @e[type=minecraft:marker,tag=vt_remove_target,limit=1] run tellraw @s {"text":"[Villager Taxes] No tax barrel was found within 8 blocks.","color":"red"}

kill @e[type=minecraft:marker,tag=vt_remove_target,limit=1]
