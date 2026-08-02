scoreboard players operation #last_auto_day vt_runtime = #current_day vt_runtime

scoreboard players set #automatic_collection vt_runtime 1
function vt:collection/start
scoreboard players set #automatic_collection vt_runtime 0
