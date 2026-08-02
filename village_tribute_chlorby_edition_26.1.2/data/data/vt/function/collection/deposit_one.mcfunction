scoreboard players set #insert_success vt_runtime 0
execute store success score #insert_success vt_runtime run loot insert ~ ~ ~ loot vt:single_emerald

execute if score #insert_success vt_runtime matches 1 run scoreboard players remove @s vt_balance 1
execute if score #insert_success vt_runtime matches 1 run scoreboard players remove @s vt_work 1
execute if score #insert_success vt_runtime matches 1 run scoreboard players add @s vt_paid 1

execute if score #insert_success vt_runtime matches 0 run scoreboard players set @s vt_work 0
execute if score #insert_success vt_runtime matches 1 if score @s vt_work matches 1.. run function vt:collection/deposit_one
