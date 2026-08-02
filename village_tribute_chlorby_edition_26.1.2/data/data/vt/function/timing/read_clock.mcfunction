# Query total elapsed Overworld-clock ticks.
execute store result score #clock_total vt_runtime run time of minecraft:overworld query time

# Current time of day, from 0 through 23999.
scoreboard players operation #daytime vt_runtime = #clock_total vt_runtime
scoreboard players set #day_length vt_runtime 24000
scoreboard players operation #daytime vt_runtime %= #day_length vt_runtime

# Absolute Minecraft day number, used to prevent duplicate automatic collections.
scoreboard players operation #current_day vt_runtime = #clock_total vt_runtime
scoreboard players operation #current_day vt_runtime /= #day_length vt_runtime
