scoreboard players set #cleanup_counter vt_runtime 0
function vt:cleanup/deduplicate_all

execute in minecraft:overworld run function vt:cleanup/dimension
execute in minecraft:the_nether run function vt:cleanup/dimension
execute in minecraft:the_end run function vt:cleanup/dimension
