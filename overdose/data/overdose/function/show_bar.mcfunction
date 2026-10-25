# Overdose - Actionbar Display Manager
# If overdose_hud is installed, overdose_hud manages the combined persistent bar seamlessly.

execute if score @s overdose.has_axe matches 1 if score @s overdose.charge matches 100 run particle minecraft:electric_spark ~ ~1 ~ 0.3 0.4 0.3 0.05 2

# Standalone fallback if overdose_hud is not active
execute unless score #c24 overdose_hud.data matches 24 if score @s overdose.has_axe matches 1 if score @s overdose.charge matches 0 run title @s actionbar ["",{"text":"[Overdose] ","color":"gold","bold":true},{"text":"🪓 Shift to activate","color":"yellow"}]
execute unless score #c24 overdose_hud.data matches 24 if score @s overdose.has_axe matches 1 if score @s overdose.charge matches 1..99 run title @s actionbar ["",{"text":"⚡ [Overdose] ","color":"gold","bold":true},{"text":"[","color":"gray"},{"text":"■■■■","color":"gold"},{"text":"░░░░░░","color":"dark_gray"},{"text":"] ","color":"gray"},{"score":{"name":"@s","objective":"overdose.charge"},"color":"white"},{"text":"%","color":"white"}]
execute unless score #c24 overdose_hud.data matches 24 if score @s overdose.has_axe matches 1 if score @s overdose.charge matches 100 run title @s actionbar ["",{"text":"⚡ [Overdose] 🪓 ACTIVE! Chop to Fell Tree! [■■■■■■■■■■] 100% ⚡","color":"aqua","bold":true}]
