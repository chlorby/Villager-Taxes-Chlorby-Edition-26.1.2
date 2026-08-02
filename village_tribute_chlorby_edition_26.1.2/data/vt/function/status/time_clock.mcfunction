execute store result score #daytime vt_runtime run time query daytime
scoreboard players operation @s vt_timeleft = #collection_time vt_config
scoreboard players operation @s vt_timeleft -= #daytime vt_runtime
execute if score @s vt_timeleft matches ..0 run scoreboard players add @s vt_timeleft 24000
tellraw @s [{"text":"Next automatic collection in approximately "},{"score":{"name":"@s","objective":"vt_timeleft"},"color":"green"},{"text":" ticks, at day time "},{"score":{"name":"#collection_time","objective":"vt_config"},"color":"yellow"},{"text":"."}]
