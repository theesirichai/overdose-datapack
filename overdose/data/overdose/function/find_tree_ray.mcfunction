# Overdose - Raycast to find the actual tree log

scoreboard players add @s overdose.ray 1

# Check if ray hits or is adjacent to a log
execute if score @s overdose.found matches 0 if block ~ ~ ~ #minecraft:logs run function overdose:fell_tree_here
execute if score @s overdose.found matches 0 if block ~ ~1 ~ #minecraft:logs positioned ~ ~1 ~ run function overdose:fell_tree_here
execute if score @s overdose.found matches 0 if block ~ ~-1 ~ #minecraft:logs positioned ~ ~-1 ~ run function overdose:fell_tree_here
execute if score @s overdose.found matches 0 if block ~1 ~ ~ #minecraft:logs positioned ~1 ~ ~ run function overdose:fell_tree_here
execute if score @s overdose.found matches 0 if block ~-1 ~ ~ #minecraft:logs positioned ~-1 ~ ~ run function overdose:fell_tree_here
execute if score @s overdose.found matches 0 if block ~ ~ ~1 #minecraft:logs positioned ~ ~ ~1 run function overdose:fell_tree_here
execute if score @s overdose.found matches 0 if block ~ ~ ~-1 #minecraft:logs positioned ~ ~ ~-1 run function overdose:fell_tree_here

# Also check for leaves if looking directly into the canopy
execute if score @s overdose.found matches 0 if block ~ ~ ~ #minecraft:leaves run function overdose:fell_tree_here

# Step forward incrementally up to ~5.5 blocks
execute if score @s overdose.found matches 0 if score @s overdose.ray matches ..13 positioned ^ ^ ^0.4 run function overdose:find_tree_ray

# Fallback: check 2 blocks in front of player
execute if score @s overdose.found matches 0 if score @s overdose.ray matches 14.. positioned ^ ^ ^2.2 run function overdose:fell_tree_here
