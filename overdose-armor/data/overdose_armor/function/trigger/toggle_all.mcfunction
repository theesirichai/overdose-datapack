# Overdose Invisible Armor - Toggle All Armor Visibility
scoreboard players set @s od_armor 0
scoreboard players add @s od_ar_all 1
execute if score @s od_ar_all matches 2.. run scoreboard players set @s od_ar_all 0

execute if score @s od_ar_all matches 1 run function overdose_armor:trigger/enable_all
execute if score @s od_ar_all matches 0 run function overdose_armor:trigger/disable_all
