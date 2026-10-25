# Overdose Invisible Armor - Toggle Sound & Particle Effects
scoreboard players set @s od_armor_sfx 0
scoreboard players add @s od_ar_sfx_on 1
execute if score @s od_ar_sfx_on matches 2.. run scoreboard players set @s od_ar_sfx_on 0

execute if score @s od_ar_sfx_on matches 1 run title @s actionbar ["",{"text":"🛡 [Overdose] ","color":"red","bold":true},{"text":"เสียงและเอฟเฟกต์: ","color":"white"},{"text":"เปิดใช้งาน (ON ✔)","color":"green","bold":true}]
execute if score @s od_ar_sfx_on matches 0 run title @s actionbar ["",{"text":"🛡 [Overdose] ","color":"red","bold":true},{"text":"เสียงและเอฟเฟกต์: ","color":"white"},{"text":"ปิดใช้งาน (OFF ✖)","color":"red","bold":true}]
execute if score @s od_ar_sfx_on matches 1 run playsound minecraft:ui.button.click player @s ~ ~ ~ 0.8 1.5
function overdose_armor:trigger/menu
