tag @a[tag=vt_warning_subject] remove vt_warning_subject
tag @s add vt_warning_subject

scoreboard players set @s vt_temp 0
scoreboard players set @s vt_due 0

function vt:warning/count_villagers_dispatch

execute if score @s vt_temp >= #settlement_min vt_config run scoreboard players set @s vt_due 1
execute if score #generated_villages vt_config matches 1 if score @s vt_temp matches 1.. if predicate vt:in_generated_village run scoreboard players set @s vt_due 1

execute if score @s vt_due matches 1 run function vt:warning/send
tag @s remove vt_warning_subject
