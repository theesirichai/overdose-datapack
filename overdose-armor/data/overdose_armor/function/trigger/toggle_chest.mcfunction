# Overdose Invisible Armor - Toggle Chest Slot (Chestplate / Elytra)
scoreboard players set @s od_hide_chest 0
scoreboard players add @s od_ar_chest 1
execute if score @s od_ar_chest matches 2.. run scoreboard players set @s od_ar_chest 0

function overdose_armor:trigger/sync_all_flag
function overdose_armor:player/update_armor

execute if score @s od_ar_chest matches 1 run title @s actionbar ["",{"text":"🛡 [Overdose] ","color":"red","bold":true},{"text":"👕 เสื้อเกราะ/ปีก (Chest): ","color":"white"},{"text":"ซ่อนอยู่ (HIDDEN ✔)","color":"aqua","bold":true}]
execute if score @s od_ar_chest matches 0 run title @s actionbar ["",{"text":"🛡 [Overdose] ","color":"red","bold":true},{"text":"👕 เสื้อเกราะ/ปีก (Chest): ","color":"white"},{"text":"แสดงปกติ (VISIBLE 👁)","color":"green","bold":true}]
execute if score @s od_ar_sfx_on matches 1 run playsound minecraft:ui.button.click player @s ~ ~ ~ 0.8 1.5
function overdose_armor:trigger/menu
