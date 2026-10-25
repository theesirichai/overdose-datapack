# Overdose - Check if player is holding an axe

scoreboard players set @s overdose.has_axe 0

# Tag checks (modern 1.20.5+ / 26.x syntax)
execute if items entity @s weapon.mainhand #minecraft:axes run scoreboard players set @s overdose.has_axe 1
execute if items entity @s weapon.offhand #minecraft:axes run scoreboard players set @s overdose.has_axe 1

# Direct item fallbacks
execute if items entity @s weapon.mainhand minecraft:diamond_axe run scoreboard players set @s overdose.has_axe 1
execute if items entity @s weapon.mainhand minecraft:netherite_axe run scoreboard players set @s overdose.has_axe 1
execute if items entity @s weapon.mainhand minecraft:iron_axe run scoreboard players set @s overdose.has_axe 1
execute if items entity @s weapon.mainhand minecraft:golden_axe run scoreboard players set @s overdose.has_axe 1
execute if items entity @s weapon.mainhand minecraft:stone_axe run scoreboard players set @s overdose.has_axe 1
execute if items entity @s weapon.mainhand minecraft:wooden_axe run scoreboard players set @s overdose.has_axe 1

# If not holding an axe, reset charge
execute if score @s overdose.has_axe matches 0 run scoreboard players set @s overdose.charge 0
