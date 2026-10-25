# Overdose - Raycast step to find the tree trunk
scoreboard players add @s overdose.ray 1

# Check current block and neighbors for log or leaves
execute if score @s overdose.found matches 0 if block ~ ~ ~ #minecraft:logs run function overdose:found_tree
execute if score @s overdose.found matches 0 if block ~ ~1 ~ #minecraft:logs positioned ~ ~1 ~ run function overdose:found_tree
execute if score @s overdose.found matches 0 if block ~ ~-1 ~ #minecraft:logs positioned ~ ~-1 ~ run function overdose:found_tree
execute if score @s overdose.found matches 0 if block ~1 ~ ~ #minecraft:logs positioned ~1 ~ ~ run function overdose:found_tree
execute if score @s overdose.found matches 0 if block ~-1 ~ ~ #minecraft:logs positioned ~-1 ~ ~ run function overdose:found_tree
execute if score @s overdose.found matches 0 if block ~ ~ ~1 #minecraft:logs positioned ~ ~ ~1 run function overdose:found_tree
execute if score @s overdose.found matches 0 if block ~ ~ ~-1 #minecraft:logs positioned ~ ~ ~-1 run function overdose:found_tree
execute if score @s overdose.found matches 0 if block ~ ~ ~ #minecraft:leaves run function overdose:found_tree

# Advance raycast forward if not found yet (up to 12 steps = 6 blocks)
execute if score @s overdose.found matches 0 if score @s overdose.ray matches ..11 positioned ^ ^ ^0.5 run function overdose:raycast

# Fallback: if not found directly, check 2.5 blocks in front of player
execute if score @s overdose.found matches 0 if score @s overdose.ray matches 12.. positioned ^ ^ ^2.5 run function overdose:found_tree
