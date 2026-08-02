# Minecraft 26.1 moved time-of-day queries to the world-clock system.
# Query total elapsed Overworld-clock ticks, then reduce the value to one 24,000-tick day.
execute store result score #clock_total vt_runtime run time of minecraft:overworld query time
scoreboard players operation #daytime vt_runtime = #clock_total vt_runtime
scoreboard players set #day_length vt_runtime 24000
scoreboard players operation #daytime vt_runtime %= #day_length vt_runtime
