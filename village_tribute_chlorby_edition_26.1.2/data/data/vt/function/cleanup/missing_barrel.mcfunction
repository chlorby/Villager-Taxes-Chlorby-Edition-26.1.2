# Safety guard: this function may only notify and remove an actual taxes-barrel marker.
execute if entity @s[type=minecraft:marker,tag=vt_tribute_barrel] run function vt:notify/missing_dispatch
kill @s[type=minecraft:marker,tag=vt_tribute_barrel]
