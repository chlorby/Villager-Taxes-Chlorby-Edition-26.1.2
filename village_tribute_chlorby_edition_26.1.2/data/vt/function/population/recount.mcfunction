execute store result score #recount_gametime vt_runtime run time query gametime
execute unless score #recount_gametime vt_runtime = #last_recount_gametime vt_runtime run function vt:population/recount_once
