scoreboard objectives add vt_config dummy
scoreboard objectives add vt_runtime dummy
scoreboard objectives add vt_count dummy
scoreboard objectives add vt_due dummy
scoreboard objectives add vt_balance dummy
scoreboard objectives add vt_work dummy
scoreboard objectives add vt_paid dummy
scoreboard objectives add vt_temp dummy
scoreboard objectives add vt_warn dummy
scoreboard objectives add vt_timeleft dummy
scoreboard objectives add vt_taxday dummy

execute unless score #initialized vt_config matches 1 run function vt:config/defaults
function vt:config/validate
function vt:timing/read_clock
scoreboard players operation #last_daytime vt_runtime = #daytime vt_runtime
execute unless score #last_auto_day vt_runtime matches -2147483648..2147483647 run scoreboard players operation #last_auto_day vt_runtime = #current_day vt_runtime

function vt:cleanup/deduplicate_all

tellraw @a {"text":"[Villager Taxes] Villager Taxes loaded.","color":"green"}
