function vt:cleanup/deduplicate_all
function vt:config/validate
function vt:population/recount

execute in minecraft:overworld run function vt:collection/process_dimension
execute in minecraft:the_nether run function vt:collection/process_dimension
execute in minecraft:the_end run function vt:collection/process_dimension
