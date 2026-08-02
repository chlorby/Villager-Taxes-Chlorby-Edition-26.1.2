# Claim this Minecraft day before collecting so duplicate tick callbacks cannot repeat it.
scoreboard players operation #last_auto_day vt_runtime = #current_day vt_runtime
function vt:collection/start
