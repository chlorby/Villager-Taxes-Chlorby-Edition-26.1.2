tellraw @s [{"text":"[Village Tribute] This settlement has no tribute barrel within ","color":"red"},{"score":{"name":"#tax_radius","objective":"vt_config"},"color":"yellow"},{"text":" blocks.","color":"red"}]
scoreboard players operation @s vt_warn = #warning_cooldown vt_config
