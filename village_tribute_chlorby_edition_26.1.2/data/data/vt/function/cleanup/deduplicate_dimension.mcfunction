tag @e[type=minecraft:marker,tag=vt_tribute_barrel] remove vt_unique_barrel_marker

execute as @e[type=minecraft:marker,tag=vt_tribute_barrel] at @s unless entity @e[type=minecraft:marker,tag=vt_tribute_barrel,tag=vt_unique_barrel_marker,distance=..0.1] run tag @s add vt_unique_barrel_marker

kill @e[type=minecraft:marker,tag=vt_tribute_barrel,tag=!vt_unique_barrel_marker]

tag @e[type=minecraft:marker,tag=vt_tribute_barrel,tag=vt_unique_barrel_marker] remove vt_unique_barrel_marker
