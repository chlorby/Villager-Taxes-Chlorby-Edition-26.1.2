tag @s add vt_processed_emerald
execute if score #messages vt_config matches 1 run tellraw @p[distance=..8] {"text":"This barrel is already a tribute barrel.","color":"yellow"}
