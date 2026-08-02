scoreboard players operation @s vt_timeleft = #interval_ticks vt_config
scoreboard players operation @s vt_timeleft -= #interval_counter vt_runtime
execute if score @s vt_timeleft matches ..0 run scoreboard players operation @s vt_timeleft = #interval_ticks vt_config
tellraw @s [{"text":"Next automatic collection in approximately "},{"score":{"name":"@s","objective":"vt_timeleft"},"color":"green"},{"text":" ticks (interval mode)."}]
