function vt:cleanup/deduplicate_all
function vt:config/validate
function vt:population/recount
execute as @e[type=minecraft:marker,tag=vt_tribute_barrel] at @s run function vt:collection/process_barrel
