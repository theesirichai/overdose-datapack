# Overdose Invisible Armor - Tick Function
# Minecraft Java Edition 26.3
# Author: teamthee

# Initialize new players
execute as @a unless score @s od_ar_init matches 1 run function overdose_armor:player/init

# Run per-player tick logic (Works in Survival, Adventure, and Creative)
execute as @a[gamemode=!spectator] at @s run function overdose_armor:player/tick
