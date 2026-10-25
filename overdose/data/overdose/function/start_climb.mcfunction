# Overdose - Start tree climb sequence

tp @s ~ ~-2 ~
scoreboard players set @s overdose.layer 0
execute at @s run function overdose:climb_loop
