# Overdose - Fell tree at target position

scoreboard players set @s overdose.found 1

summon marker ~ ~ ~ {Tags:["overdose_active_cutter"]}
execute as @e[type=marker,tag=overdose_active_cutter,distance=..1,limit=1] at @s run function overdose:start_climb
kill @e[type=marker,tag=overdose_active_cutter]
