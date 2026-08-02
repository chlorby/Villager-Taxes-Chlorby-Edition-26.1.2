tellraw @s {"text":"[Villager Taxes] Starting a manual collection for all loaded districts...","color":"aqua"}
scoreboard players set #automatic_collection vt_runtime 0
function vt:collection/start
tellraw @s {"text":"[Villager Taxes] Manual collection pass finished. Check the barrel and any local result message.","color":"green"}
