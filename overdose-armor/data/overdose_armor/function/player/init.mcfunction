# Overdose Invisible Armor - Player Initialization
# Executed as @s (player)

scoreboard players set @s od_ar_init 1

# Default visibility settings: All Armor Hidden = 1 (Enabled)
scoreboard players set @s od_ar_all 1
scoreboard players set @s od_ar_head 1
scoreboard players set @s od_ar_chest 1
scoreboard players set @s od_ar_legs 1
scoreboard players set @s od_ar_feet 1

# Default preferences: In-Game Gesture = 1 (ON), Sound/Particles = 1 (ON)
scoreboard players set @s od_ar_gest_on 1
scoreboard players set @s od_ar_sfx_on 1

# Reset gesture trackers
scoreboard players set @s od_ar_sneak 0
scoreboard players set @s od_ar_jump 0
scoreboard players set @s od_ar_was_snk 0
scoreboard players set @s od_ar_snk_cnt 0
scoreboard players set @s od_ar_snk_tmr 0

# Enable all triggers for this player
scoreboard players enable @s od_armor
scoreboard players enable @s od_armor_menu
scoreboard players enable @s od_hide_head
scoreboard players enable @s od_hide_chest
scoreboard players enable @s od_hide_legs
scoreboard players enable @s od_hide_feet
scoreboard players enable @s od_armor_gest
scoreboard players enable @s od_armor_sfx
