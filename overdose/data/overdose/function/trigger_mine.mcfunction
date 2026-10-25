# Overdose - Triggered when player mines any log

scoreboard players set @s overdose.m_oak 0
scoreboard players set @s overdose.m_spruce 0
scoreboard players set @s overdose.m_birch 0
scoreboard players set @s overdose.m_jungle 0
scoreboard players set @s overdose.m_acacia 0
scoreboard players set @s overdose.m_dark 0
scoreboard players set @s overdose.m_mang 0
scoreboard players set @s overdose.m_cherry 0
scoreboard players set @s overdose.m_poplar 0
scoreboard players set @s overdose.m_crim 0
scoreboard players set @s overdose.m_warp 0

scoreboard players set @s overdose.m_oak_w 0
scoreboard players set @s overdose.m_spruce_w 0
scoreboard players set @s overdose.m_birch_w 0
scoreboard players set @s overdose.m_jungle_w 0
scoreboard players set @s overdose.m_acacia_w 0
scoreboard players set @s overdose.m_dark_w 0
scoreboard players set @s overdose.m_mang_w 0
scoreboard players set @s overdose.m_cherry_w 0
scoreboard players set @s overdose.m_poplar_w 0

# If charged 100% and holding an axe, fell the tree!
execute if score @s overdose.charge matches 100 if score @s overdose.has_axe matches 1 run function overdose:start_felling
