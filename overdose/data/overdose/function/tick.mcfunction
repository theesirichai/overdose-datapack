# Overdose - Tick Function
# Author: teamthee

execute as @a run function overdose:check_axe
execute as @a run function overdose:sneak_detect
execute as @a run function overdose:show_bar

# Check if any player mined a log block (Survival mode)
execute as @a[scores={overdose.m_oak=1..}] at @s run function overdose:trigger_mine
execute as @a[scores={overdose.m_spruce=1..}] at @s run function overdose:trigger_mine
execute as @a[scores={overdose.m_birch=1..}] at @s run function overdose:trigger_mine
execute as @a[scores={overdose.m_jungle=1..}] at @s run function overdose:trigger_mine
execute as @a[scores={overdose.m_acacia=1..}] at @s run function overdose:trigger_mine
execute as @a[scores={overdose.m_dark=1..}] at @s run function overdose:trigger_mine
execute as @a[scores={overdose.m_mang=1..}] at @s run function overdose:trigger_mine
execute as @a[scores={overdose.m_cherry=1..}] at @s run function overdose:trigger_mine
execute as @a[scores={overdose.m_poplar=1..}] at @s run function overdose:trigger_mine
execute as @a[scores={overdose.m_crim=1..}] at @s run function overdose:trigger_mine
execute as @a[scores={overdose.m_warp=1..}] at @s run function overdose:trigger_mine

execute as @a[scores={overdose.m_oak_w=1..}] at @s run function overdose:trigger_mine
execute as @a[scores={overdose.m_spruce_w=1..}] at @s run function overdose:trigger_mine
execute as @a[scores={overdose.m_birch_w=1..}] at @s run function overdose:trigger_mine
execute as @a[scores={overdose.m_jungle_w=1..}] at @s run function overdose:trigger_mine
execute as @a[scores={overdose.m_acacia_w=1..}] at @s run function overdose:trigger_mine
execute as @a[scores={overdose.m_dark_w=1..}] at @s run function overdose:trigger_mine
execute as @a[scores={overdose.m_mang_w=1..}] at @s run function overdose:trigger_mine
execute as @a[scores={overdose.m_cherry_w=1..}] at @s run function overdose:trigger_mine
execute as @a[scores={overdose.m_poplar_w=1..}] at @s run function overdose:trigger_mine

# Check if player right-clicked with an axe (Works in BOTH Survival and Creative!)
execute as @a[scores={overdose.u_dia=1..}] at @s run function overdose:trigger_use
execute as @a[scores={overdose.u_neth=1..}] at @s run function overdose:trigger_use
execute as @a[scores={overdose.u_iron=1..}] at @s run function overdose:trigger_use
execute as @a[scores={overdose.u_gold=1..}] at @s run function overdose:trigger_use
execute as @a[scores={overdose.u_stone=1..}] at @s run function overdose:trigger_use
execute as @a[scores={overdose.u_wood=1..}] at @s run function overdose:trigger_use
