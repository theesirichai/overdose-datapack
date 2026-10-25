# Overdose - Anchor BFS from dropped item entity

execute as @a[scores={overdose.found=0},distance=..10,limit=1] run scoreboard players set @s overdose.found 1

# Summon root BFS node at the exact broken log coordinate
summon marker ~ ~ ~ {Tags:["overdose_node"]}

# Start BFS wave felling
function overdose:run_waves
