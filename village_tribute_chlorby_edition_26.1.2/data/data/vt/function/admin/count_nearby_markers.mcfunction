scoreboard players set @a[tag=vt_diagnostic_player,limit=1] vt_temp 0
execute as @e[type=minecraft:marker,tag=vt_tribute_barrel,distance=..2] run scoreboard players add @a[tag=vt_diagnostic_player,limit=1] vt_temp 1
