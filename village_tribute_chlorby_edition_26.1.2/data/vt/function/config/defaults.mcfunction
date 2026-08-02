scoreboard players set #tax_radius vt_config 64
scoreboard players set #notification_radius vt_config 64
scoreboard players set #settlement_radius vt_config 32
scoreboard players set #settlement_min vt_config 6

scoreboard players set #emeralds_per_villager vt_config 1
scoreboard players set #max_tax vt_config 128
scoreboard players set #deposit_limit vt_config 256

scoreboard players set #count_unemployed vt_config 0
scoreboard players set #count_nitwits vt_config 0
scoreboard players set #count_babies vt_config 0

scoreboard players set #messages vt_config 1
scoreboard players set #sounds vt_config 1
scoreboard players set #particles vt_config 1
scoreboard players set #missing_warnings vt_config 1
scoreboard players set #generated_villages vt_config 1

scoreboard players set #warning_cooldown vt_config 12000
scoreboard players set #warning_check_ticks vt_config 100
scoreboard players set #cleanup_ticks vt_config 20

# Timing mode: 0 = repeating interval, 1 = time-of-day collection.
scoreboard players set #timing_mode vt_config 1
scoreboard players set #collection_time vt_config 0
scoreboard players set #interval_ticks vt_config 24000

scoreboard players set #interval_counter vt_runtime 0
scoreboard players set #warning_counter vt_runtime 0
scoreboard players set #cleanup_counter vt_runtime 0
execute store result score #daytime vt_runtime run time query daytime
scoreboard players operation #last_daytime vt_runtime = #daytime vt_runtime

scoreboard players set #initialized vt_config 1
