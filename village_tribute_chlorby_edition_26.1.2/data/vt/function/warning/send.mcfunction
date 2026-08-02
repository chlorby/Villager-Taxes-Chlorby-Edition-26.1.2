tellraw @s [{"text":"[Villager Taxes] This settlement has no tax barrel within ","color":"red"},{"score":{"name":"#tax_radius","objective":"vt_config"},"color":"yellow"},{"text":" blocks.","color":"red"}]
scoreboard players operation @s vt_warn = #warning_cooldown vt_config
