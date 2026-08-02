execute if score #messages vt_config matches 1 run tellraw @a[distance=..48] {"text":"The tribute barrel was destroyed or removed.","color":"red"}
execute if score #sounds vt_config matches 1 run playsound minecraft:block.bell.resonate master @a[distance=..48] ~ ~ ~ 0.6 0.75
