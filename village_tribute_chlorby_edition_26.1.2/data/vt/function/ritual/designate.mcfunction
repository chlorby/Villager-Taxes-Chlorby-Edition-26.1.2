tag @s add vt_processed_emerald
summon minecraft:marker ~ ~ ~ {Tags:["vt_tribute_barrel"]}

execute as @e[type=minecraft:marker,tag=vt_tribute_barrel,sort=nearest,limit=1,distance=..1] run scoreboard players set @s vt_balance 0
execute as @e[type=minecraft:marker,tag=vt_tribute_barrel,sort=nearest,limit=1,distance=..1] run scoreboard players set @s vt_count 0

execute if score #messages vt_config matches 1 run tellraw @p[distance=..8] {"text":"This barrel has been designated as a local tribute barrel.","color":"gold"}
execute if score #sounds vt_config matches 1 run playsound minecraft:block.bell.use master @a[distance=..16] ~ ~ ~ 0.8 1.2
execute if score #particles vt_config matches 1 run particle minecraft:happy_villager ~ ~1.2 ~ 0.35 0.35 0.35 0.02 12 normal @a[distance=..16]

item modify entity @s contents vt:remove_one
