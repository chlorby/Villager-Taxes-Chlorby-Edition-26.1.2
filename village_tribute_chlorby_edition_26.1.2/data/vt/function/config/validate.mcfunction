execute unless score #tax_radius vt_config matches 32 unless score #tax_radius vt_config matches 48 unless score #tax_radius vt_config matches 64 unless score #tax_radius vt_config matches 96 unless score #tax_radius vt_config matches 128 run scoreboard players set #tax_radius vt_config 64
execute unless score #notification_radius vt_config matches 32 unless score #notification_radius vt_config matches 48 unless score #notification_radius vt_config matches 64 unless score #notification_radius vt_config matches 96 unless score #notification_radius vt_config matches 128 run scoreboard players set #notification_radius vt_config 64
execute unless score #settlement_radius vt_config matches 16 unless score #settlement_radius vt_config matches 24 unless score #settlement_radius vt_config matches 32 unless score #settlement_radius vt_config matches 48 unless score #settlement_radius vt_config matches 64 run scoreboard players set #settlement_radius vt_config 32

execute unless score #settlement_min vt_config matches 1..100 run scoreboard players set #settlement_min vt_config 6
execute unless score #emeralds_per_villager vt_config matches 1..64 run scoreboard players set #emeralds_per_villager vt_config 1
execute unless score #max_tax vt_config matches 0..4096 run scoreboard players set #max_tax vt_config 128
execute unless score #deposit_limit vt_config matches 1..512 run scoreboard players set #deposit_limit vt_config 256

execute unless score #count_unemployed vt_config matches 0..1 run scoreboard players set #count_unemployed vt_config 0
execute unless score #count_nitwits vt_config matches 0..1 run scoreboard players set #count_nitwits vt_config 0
execute unless score #count_babies vt_config matches 0..1 run scoreboard players set #count_babies vt_config 0

execute unless score #messages vt_config matches 0..1 run scoreboard players set #messages vt_config 1
execute unless score #sounds vt_config matches 0..1 run scoreboard players set #sounds vt_config 1
execute unless score #particles vt_config matches 0..1 run scoreboard players set #particles vt_config 1
execute unless score #missing_warnings vt_config matches 0..1 run scoreboard players set #missing_warnings vt_config 1
execute unless score #generated_villages vt_config matches 0..1 run scoreboard players set #generated_villages vt_config 1

execute unless score #warning_cooldown vt_config matches 0..72000 run scoreboard players set #warning_cooldown vt_config 12000
execute unless score #warning_check_ticks vt_config matches 20..1200 run scoreboard players set #warning_check_ticks vt_config 100
execute unless score #cleanup_ticks vt_config matches 1..1200 run scoreboard players set #cleanup_ticks vt_config 20

execute unless score #timing_mode vt_config matches 0..1 run scoreboard players set #timing_mode vt_config 1
execute unless score #collection_time vt_config matches 0..23999 run scoreboard players set #collection_time vt_config 0
execute unless score #interval_ticks vt_config matches 20..72000 run scoreboard players set #interval_ticks vt_config 24000
