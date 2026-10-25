# Overdose - BFS Wave Step

# 1. Process all active nodes for this wave
execute as @e[type=marker,tag=overdose_node] at @s run function overdose:node_step

# 2. Promote newly spawned nodes to active nodes
tag @e[type=marker,tag=overdose_new] add overdose_node
tag @e[type=marker,tag=overdose_new] remove overdose_new

scoreboard players add #global overdose.wave 1

# 3. If there are still active nodes, continue to next wave (up to 45 waves)
execute if entity @e[type=marker,tag=overdose_node] if score #global overdose.wave matches ..44 run function overdose:wave_step

# 4. Clean up any remaining markers when complete
execute unless entity @e[type=marker,tag=overdose_node] run kill @e[type=marker,tag=overdose_new]
execute if score #global overdose.wave matches 45.. run kill @e[type=marker,tag=overdose_node]
