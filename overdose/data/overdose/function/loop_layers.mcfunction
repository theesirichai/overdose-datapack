# Overdose - Loop layers upward with Marker

# 1. Scan the 11x11 area at marker's current height
function overdose:scan_layer

# 2. Teleport marker up 1 block
tp @s ~ ~1 ~
scoreboard players add @s overdose.layer 1

# 3. Recurse at the marker's NEW height (up to 37 layers)
execute at @s if score @s overdose.layer matches ..37 run function overdose:loop_layers
