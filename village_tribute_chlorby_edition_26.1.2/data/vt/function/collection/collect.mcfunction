scoreboard players operation @s vt_due = @s vt_count
scoreboard players operation @s vt_due *= #emeralds_per_villager vt_config

execute if score #max_tax vt_config matches 1.. if score @s vt_due > #max_tax vt_config run scoreboard players operation @s vt_due = #max_tax vt_config

scoreboard players operation @s vt_balance += @s vt_due

scoreboard players set @s vt_paid 0
scoreboard players operation @s vt_work = @s vt_balance
execute if score @s vt_work > #deposit_limit vt_config run scoreboard players operation @s vt_work = #deposit_limit vt_config

execute if score @s vt_work matches 1.. run function vt:collection/deposit_one

function vt:notify/collection_dispatch
