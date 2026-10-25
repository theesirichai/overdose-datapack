# Overdose - Climb loop (Up to 37 layers high)

# 1. Scan 9x9 square layer at marker's current elevation
execute at @s run function overdose:scan_9x9

# 2. Teleport marker up 1 block
tp @s ~ ~1 ~
scoreboard players add @s overdose.layer 1

# 3. Recurse at the marker's NEW elevation
execute at @s if score @s overdose.layer matches ..36 run function overdose:climb_loop
