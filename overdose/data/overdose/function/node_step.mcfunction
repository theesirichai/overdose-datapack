# Overdose - BFS Node Step (Single Log Node)

# 1. Break current block if it is a log
execute if block ~ ~ ~ #minecraft:logs run setblock ~ ~ ~ air destroy

# 2. Break surrounding leaves
execute positioned ~ ~1 ~ if block ~ ~ ~ #minecraft:leaves run setblock ~ ~ ~ air destroy
execute positioned ~ ~2 ~ if block ~ ~ ~ #minecraft:leaves run setblock ~ ~ ~ air destroy
execute positioned ~1 ~ ~ if block ~ ~ ~ #minecraft:leaves run setblock ~ ~ ~ air destroy
execute positioned ~-1 ~ ~ if block ~ ~ ~ #minecraft:leaves run setblock ~ ~ ~ air destroy
execute positioned ~ ~ ~1 if block ~ ~ ~ #minecraft:leaves run setblock ~ ~ ~ air destroy
execute positioned ~ ~ ~-1 if block ~ ~ ~ #minecraft:leaves run setblock ~ ~ ~ air destroy
execute positioned ~1 ~1 ~ if block ~ ~ ~ #minecraft:leaves run setblock ~ ~ ~ air destroy
execute positioned ~-1 ~1 ~ if block ~ ~ ~ #minecraft:leaves run setblock ~ ~ ~ air destroy
execute positioned ~ ~1 ~1 if block ~ ~ ~ #minecraft:leaves run setblock ~ ~ ~ air destroy
execute positioned ~ ~1 ~-1 if block ~ ~ ~ #minecraft:leaves run setblock ~ ~ ~ air destroy
execute positioned ~1 ~-1 ~ if block ~ ~ ~ #minecraft:leaves run setblock ~ ~ ~ air destroy
execute positioned ~-1 ~-1 ~ if block ~ ~ ~ #minecraft:leaves run setblock ~ ~ ~ air destroy
execute positioned ~ ~-1 ~1 if block ~ ~ ~ #minecraft:leaves run setblock ~ ~ ~ air destroy
execute positioned ~ ~-1 ~-1 if block ~ ~ ~ #minecraft:leaves run setblock ~ ~ ~ air destroy

# Extra Nether/Mangrove blocks
execute positioned ~ ~1 ~ if block ~ ~ ~ #minecraft:wart_blocks run setblock ~ ~ ~ air destroy
execute positioned ~ ~1 ~ if block ~ ~ ~ minecraft:shroomlight run setblock ~ ~ ~ air destroy
execute positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:mangrove_roots run setblock ~ ~ ~ air destroy

# 3. Propagate to adjacent log neighbors (Up, Diagonals, Horizontal, Down)

# UP & Diagonals Up
execute positioned ~ ~1 ~ if block ~ ~ ~ #minecraft:logs run summon marker ~ ~ ~ {Tags:["overdose_new"]}
execute positioned ~1 ~1 ~ if block ~ ~ ~ #minecraft:logs run summon marker ~ ~ ~ {Tags:["overdose_new"]}
execute positioned ~-1 ~1 ~ if block ~ ~ ~ #minecraft:logs run summon marker ~ ~ ~ {Tags:["overdose_new"]}
execute positioned ~ ~1 ~1 if block ~ ~ ~ #minecraft:logs run summon marker ~ ~ ~ {Tags:["overdose_new"]}
execute positioned ~ ~1 ~-1 if block ~ ~ ~ #minecraft:logs run summon marker ~ ~ ~ {Tags:["overdose_new"]}
execute positioned ~1 ~1 ~1 if block ~ ~ ~ #minecraft:logs run summon marker ~ ~ ~ {Tags:["overdose_new"]}
execute positioned ~-1 ~1 ~1 if block ~ ~ ~ #minecraft:logs run summon marker ~ ~ ~ {Tags:["overdose_new"]}
execute positioned ~1 ~1 ~-1 if block ~ ~ ~ #minecraft:logs run summon marker ~ ~ ~ {Tags:["overdose_new"]}
execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ #minecraft:logs run summon marker ~ ~ ~ {Tags:["overdose_new"]}

# Horizontal (Branches)
execute positioned ~1 ~ ~ if block ~ ~ ~ #minecraft:logs run summon marker ~ ~ ~ {Tags:["overdose_new"]}
execute positioned ~-1 ~ ~ if block ~ ~ ~ #minecraft:logs run summon marker ~ ~ ~ {Tags:["overdose_new"]}
execute positioned ~ ~ ~1 if block ~ ~ ~ #minecraft:logs run summon marker ~ ~ ~ {Tags:["overdose_new"]}
execute positioned ~ ~ ~-1 if block ~ ~ ~ #minecraft:logs run summon marker ~ ~ ~ {Tags:["overdose_new"]}
execute positioned ~1 ~ ~1 if block ~ ~ ~ #minecraft:logs run summon marker ~ ~ ~ {Tags:["overdose_new"]}
execute positioned ~-1 ~ ~1 if block ~ ~ ~ #minecraft:logs run summon marker ~ ~ ~ {Tags:["overdose_new"]}
execute positioned ~1 ~ ~-1 if block ~ ~ ~ #minecraft:logs run summon marker ~ ~ ~ {Tags:["overdose_new"]}
execute positioned ~-1 ~ ~-1 if block ~ ~ ~ #minecraft:logs run summon marker ~ ~ ~ {Tags:["overdose_new"]}

# Down (Stump & roots)
execute positioned ~ ~-1 ~ if block ~ ~ ~ #minecraft:logs run summon marker ~ ~ ~ {Tags:["overdose_new"]}
execute positioned ~1 ~-1 ~ if block ~ ~ ~ #minecraft:logs run summon marker ~ ~ ~ {Tags:["overdose_new"]}
execute positioned ~-1 ~-1 ~ if block ~ ~ ~ #minecraft:logs run summon marker ~ ~ ~ {Tags:["overdose_new"]}
execute positioned ~ ~-1 ~1 if block ~ ~ ~ #minecraft:logs run summon marker ~ ~ ~ {Tags:["overdose_new"]}
execute positioned ~ ~-1 ~-1 if block ~ ~ ~ #minecraft:logs run summon marker ~ ~ ~ {Tags:["overdose_new"]}

# 4. Kill current marker to complete step
kill @s
