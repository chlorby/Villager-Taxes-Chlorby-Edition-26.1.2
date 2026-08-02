scoreboard players add @s vt_balance 0
scoreboard players add @s vt_count 0

execute unless block ~ ~ ~ minecraft:barrel run function vt:cleanup/missing_barrel
execute if block ~ ~ ~ minecraft:barrel run function vt:collection/collect
