scoreboard players set #timing_mode vt_config 1
scoreboard players set #collection_time vt_config 6000
execute store result score #daytime vt_runtime run time query daytime
scoreboard players operation #last_daytime vt_runtime = #daytime vt_runtime
tellraw @s {"text": "[Village Tribute] Collection scheduled for noon (day time 6000).", "color": "green"}
