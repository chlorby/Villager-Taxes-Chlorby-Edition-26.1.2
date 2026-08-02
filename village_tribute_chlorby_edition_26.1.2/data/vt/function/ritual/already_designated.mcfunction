tag @s add vt_processed_emerald
execute as @a[distance=..16,sort=nearest,limit=1] run tellraw @s {"text":"This barrel is already a tax barrel.","color":"yellow"}
