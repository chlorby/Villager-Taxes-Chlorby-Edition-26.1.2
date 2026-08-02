scoreboard players set #timing_mode vt_config 1
scoreboard players set #collection_time vt_config 18000
execute store result score #daytime vt_runtime run time query daytime
scoreboard players operation #last_daytime vt_runtime = #daytime vt_runtime
tellraw @s {"text": "[Village Tribute] Collection scheduled for midnight (day time 18000).", "color": "green"}
