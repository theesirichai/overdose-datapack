# Overdose Invisible Armor - Sync Master Flag from Individual Slots
scoreboard players set @s od_ar_all 0
execute if score @s od_ar_head matches 1 if score @s od_ar_chest matches 1 if score @s od_ar_legs matches 1 if score @s od_ar_feet matches 1 run scoreboard players set @s od_ar_all 1
