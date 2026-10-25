# Overdose Invisible Armor - Enable Hide All Armor
scoreboard players set @s od_ar_all 1
scoreboard players set @s od_ar_head 1
scoreboard players set @s od_ar_chest 1
scoreboard players set @s od_ar_legs 1
scoreboard players set @s od_ar_feet 1

function overdose_armor:player/update_armor

title @s actionbar ["",{"text":"🛡 [Overdose] ","color":"red","bold":true},{"text":"ซ่อนชุดเกราะทั้งหมด: ","color":"white"},{"text":"HIDDEN ✔ (ซ่อนเกราะ)","color":"aqua","bold":true}]
tellraw @s ["",{"text":"[","color":"gray"},{"text":"Overdose","color":"red","bold":true},{"text":"] ","color":"gray"},{"text":"โหมดซ่อนชุดเกราะ: ","color":"white"},{"text":"เปิดใช้งาน (HIDDEN ✔) ","color":"aqua","bold":true},{"text":"[⚙ ตั้งค่าแยกชิ้น]","color":"yellow","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger od_armor_menu"},"hover_event":{"action":"show_text","value":"คลิกเพื่อเปิดเมนูตั้งค่าซ่อนเกราะแยกชิ้น"}}]

execute if score @s od_ar_sfx_on matches 1 run playsound minecraft:block.amethyst_block.chime player @s ~ ~ ~ 1 1.4
execute if score @s od_ar_sfx_on matches 1 run particle minecraft:witch ~ ~1 ~ 0.35 0.5 0.35 0.02 15
