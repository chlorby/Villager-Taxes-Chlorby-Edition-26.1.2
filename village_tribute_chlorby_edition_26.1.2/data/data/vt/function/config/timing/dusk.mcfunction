scoreboard players set #timing_mode vt_config 1
scoreboard players set #collection_time vt_config 12000
function vt:timing/read_clock
scoreboard players operation #last_daytime vt_runtime = #daytime vt_runtime
tellraw @s {"text": "[Villager Taxes] Collection scheduled for dusk (day time 12000).", "color": "green"}
