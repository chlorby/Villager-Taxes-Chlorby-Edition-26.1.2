execute store result score #this_gametime vt_runtime run time query gametime
execute unless score #this_gametime vt_runtime = #last_processed_gametime vt_runtime run function vt:tick_once
scoreboard players operation #last_processed_gametime vt_runtime = #this_gametime vt_runtime
