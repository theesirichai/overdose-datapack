# Overdose Tree Feller - Load Function
# Author: teamthee

scoreboard objectives add overdose.sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add overdose.sneaking dummy
scoreboard objectives add overdose.charge dummy
scoreboard objectives add overdose.timer dummy
scoreboard objectives add overdose.layer dummy
scoreboard objectives add overdose.ray dummy
scoreboard objectives add overdose.found dummy
scoreboard objectives add overdose.has_axe dummy

# Log mining statistics
scoreboard objectives add overdose.m_oak minecraft.mined:minecraft.oak_log
scoreboard objectives add overdose.m_spruce minecraft.mined:minecraft.spruce_log
scoreboard objectives add overdose.m_birch minecraft.mined:minecraft.birch_log
scoreboard objectives add overdose.m_jungle minecraft.mined:minecraft.jungle_log
scoreboard objectives add overdose.m_acacia minecraft.mined:minecraft.acacia_log
scoreboard objectives add overdose.m_dark minecraft.mined:minecraft.dark_oak_log
scoreboard objectives add overdose.m_mang minecraft.mined:minecraft.mangrove_log
scoreboard objectives add overdose.m_cherry minecraft.mined:minecraft.cherry_log
scoreboard objectives add overdose.m_poplar minecraft.mined:minecraft.poplar_log
scoreboard objectives add overdose.m_crim minecraft.mined:minecraft.crimson_stem
scoreboard objectives add overdose.m_warp minecraft.mined:minecraft.warped_stem

scoreboard objectives add overdose.m_oak_w minecraft.mined:minecraft.oak_wood
scoreboard objectives add overdose.m_spruce_w minecraft.mined:minecraft.spruce_wood
scoreboard objectives add overdose.m_birch_w minecraft.mined:minecraft.birch_wood
scoreboard objectives add overdose.m_jungle_w minecraft.mined:minecraft.jungle_wood
scoreboard objectives add overdose.m_acacia_w minecraft.mined:minecraft.acacia_wood
scoreboard objectives add overdose.m_dark_w minecraft.mined:minecraft.dark_oak_wood
scoreboard objectives add overdose.m_mang_w minecraft.mined:minecraft.mangrove_wood
scoreboard objectives add overdose.m_cherry_w minecraft.mined:minecraft.cherry_wood
scoreboard objectives add overdose.m_poplar_w minecraft.mined:minecraft.poplar_wood

# Axe Right-Click / Use statistics (Works in Creative and Survival)
scoreboard objectives add overdose.u_dia minecraft.used:minecraft.diamond_axe
scoreboard objectives add overdose.u_neth minecraft.used:minecraft.netherite_axe
scoreboard objectives add overdose.u_iron minecraft.used:minecraft.iron_axe
scoreboard objectives add overdose.u_gold minecraft.used:minecraft.golden_axe
scoreboard objectives add overdose.u_stone minecraft.used:minecraft.stone_axe
scoreboard objectives add overdose.u_wood minecraft.used:minecraft.wooden_axe

tellraw @a ["",{"text":"[","color":"gray"},{"text":"Overdose","color":"red","bold":true},{"text":"] ","color":"gray"},{"text":"Tree Feller Data Pack loaded! by ","color":"green"},{"text":"teamthee","color":"aqua","bold":true}]
