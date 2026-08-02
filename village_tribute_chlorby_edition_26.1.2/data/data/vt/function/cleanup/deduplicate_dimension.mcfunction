# Keep one marker at each physical tax-barrel position and remove any extras.
tag @e[type=minecraft:marker,tag=vt_tribute_barrel] remove vt_unique_barrel_marker

# The first marker encountered at a location becomes the keeper.
execute as @e[type=minecraft:marker,tag=vt_tribute_barrel] at @s unless entity @e[type=minecraft:marker,tag=vt_tribute_barrel,tag=vt_unique_barrel_marker,distance=..0.1] run tag @s add vt_unique_barrel_marker

# Any marker sharing that location without the keeper tag is a duplicate.
kill @e[type=minecraft:marker,tag=vt_tribute_barrel,tag=!vt_unique_barrel_marker]

tag @e[type=minecraft:marker,tag=vt_tribute_barrel,tag=vt_unique_barrel_marker] remove vt_unique_barrel_marker
