# Overdose - Sneak Detect Function

# Only detect and charge when holding an axe
execute if score @s overdose.has_axe matches 1 if score @s overdose.sneak matches 1.. if score @s overdose.sneaking matches 0 run function overdose:on_sneak_press

# Detect Sneak Key Release
execute if score @s overdose.sneak matches 0 run scoreboard players set @s overdose.sneaking 0

# Reset sneak tick counter
scoreboard players set @s overdose.sneak 0

# Decay timer countdown
execute if score @s overdose.timer matches 1.. run scoreboard players remove @s overdose.timer 1

# Decay charge slowly when player stops shifting
execute if score @s overdose.timer matches 0 if score @s overdose.charge matches 1.. run scoreboard players remove @s overdose.charge 2

# Clamp bounds
execute if score @s overdose.charge matches 101.. run scoreboard players set @s overdose.charge 100
execute if score @s overdose.charge matches ..-1 run scoreboard players set @s overdose.charge 0
