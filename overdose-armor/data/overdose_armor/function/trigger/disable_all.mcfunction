# Overdose Invisible Armor - Disable Hide All Armor (Show Armor)
scoreboard players set @s od_ar_all 0
scoreboard players set @s od_ar_head 0
scoreboard players set @s od_ar_chest 0
scoreboard players set @s od_ar_legs 0
scoreboard players set @s od_ar_feet 0

function overdose_armor:player/update_armor

title @s actionbar ["",{"text":"🛡 [Overdose] ","color":"red","bold":true},{"text":"แสดงชุดเกราะปกติ: ","color":"white"},{"text":"VISIBLE 👁 (แสดงเกราะ)","color":"green","bold":true}]
tellraw @s ["",{"text":"[","color":"gray"},{"text":"Overdose","color":"red","bold":true},{"text":"] ","color":"gray"},{"text":"โหมดซ่อนชุดเกราะ: ","color":"white"},{"text":"ปิดใช้งาน (VISIBLE 👁) ","color":"green","bold":true},{"text":"[⚙ ตั้งค่าแยกชิ้น]","color":"yellow","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger od_armor_menu"},"hover_event":{"action":"show_text","value":"คลิกเพื่อเปิดเมนูตั้งค่าซ่อนเกราะแยกชิ้น"}}]

execute if score @s od_ar_sfx_on matches 1 run playsound minecraft:item.armor.equip_diamond player @s ~ ~ ~ 1 1.2
execute if score @s od_ar_sfx_on matches 1 run particle minecraft:happy_villager ~ ~1 ~ 0.35 0.5 0.35 0.05 12
