# Overdose - Triggered when player uses / right-clicks with an axe

scoreboard players set @s overdose.u_dia 0
scoreboard players set @s overdose.u_neth 0
scoreboard players set @s overdose.u_iron 0
scoreboard players set @s overdose.u_gold 0
scoreboard players set @s overdose.u_stone 0
scoreboard players set @s overdose.u_wood 0

# If charged 100% and holding an axe, fell the tree!
execute if score @s overdose.charge matches 100 if score @s overdose.has_axe matches 1 run function overdose:start_felling
