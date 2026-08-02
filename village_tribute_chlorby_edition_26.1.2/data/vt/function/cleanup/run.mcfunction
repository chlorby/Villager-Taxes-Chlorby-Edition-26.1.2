scoreboard players set #cleanup_counter vt_runtime 0
function vt:cleanup/deduplicate_all
execute as @e[type=minecraft:marker,tag=vt_tribute_barrel] at @s unless block ~ ~ ~ minecraft:barrel run function vt:cleanup/missing_barrel
