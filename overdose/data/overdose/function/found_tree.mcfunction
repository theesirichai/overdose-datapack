# Overdose - Found tree location, summon marker and run fell_tree

scoreboard players set @s overdose.found 1

summon marker ~ ~ ~ {Tags:["overdose.feller"]}
execute as @e[type=marker,tag=overdose.feller,limit=1] at @s run function overdose:fell_tree
kill @e[type=marker,tag=overdose.feller]
