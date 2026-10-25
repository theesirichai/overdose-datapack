# Overdose - Start Felling Sequence

function overdose:reset_charge

playsound minecraft:entity.zombie.break_wooden_door player @s ~ ~ ~ 1.0 0.7
playsound minecraft:item.axe.strip player @s ~ ~ ~ 1.0 0.5
title @s actionbar ["",{"text":"🌲 [Overdose] TIMBER! Tree Felled! 🌲","color":"green","bold":true}]

# Initialize search
scoreboard players set @s overdose.found 0
scoreboard players set @s overdose.ray 0

# Raycast forward from player's eye level looking for tree logs
execute at @s anchored eyes positioned ^ ^ ^0.5 run function overdose:find_tree_ray
