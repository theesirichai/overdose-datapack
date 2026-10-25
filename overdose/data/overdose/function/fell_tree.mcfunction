# Overdose - Fell Tree Root Function

# Teleport marker down 2 blocks to catch the stump/roots
tp @s ~ ~-2 ~
scoreboard players set @s overdose.layer 0

# Start ascending sweep at the marker's position
execute at @s run function overdose:loop_layers
