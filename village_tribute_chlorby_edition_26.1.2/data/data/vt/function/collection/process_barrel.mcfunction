scoreboard players add @s vt_balance 0
scoreboard players add @s vt_count 0
scoreboard players add @s vt_taxday 0

execute unless block ~ ~ ~ minecraft:barrel run function vt:cleanup/missing_barrel

execute if block ~ ~ ~ minecraft:barrel if score #automatic_collection vt_runtime matches 0 run function vt:collection/collect

execute if block ~ ~ ~ minecraft:barrel if score #automatic_collection vt_runtime matches 1 unless score @s vt_taxday = #current_day vt_runtime run function vt:collection/collect_automatic
