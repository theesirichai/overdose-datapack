# Overdose Invisible Armor - Interactive Settings & Per-Slot Menu
scoreboard players set @s od_armor_menu 0

tellraw @s ["",{"text":"\n========================================\n","color":"dark_gray"},{"text":"🛡 OVERDOSE INVISIBLE ARMOR 🛡\n","color":"red","bold":true},{"text":"Minecraft Java Edition 26.3 • by ","color":"gray"},{"text":"teamthee\n","color":"aqua","bold":true},{"text":"========================================","color":"dark_gray"}]

# Master Toggle Row
execute if score @s od_ar_all matches 1 run tellraw @s ["",{"text":"⚡ สถานะหลัก: ","color":"gold","bold":true},{"text":"[ซ่อนเกราะทั้งหมด ✔] ","color":"aqua","bold":true},{"text":"[คลิกเพื่อแสดงเกราะทั้งหมด]","color":"green","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger od_armor"},"hover_event":{"action":"show_text","value":"คลิกเพื่อสลับเป็นแสดงชุดเกราะทั้งหมด"}}]
execute unless score @s od_ar_all matches 1 run tellraw @s ["",{"text":"⚡ สถานะหลัก: ","color":"gold","bold":true},{"text":"[แสดงเกราะ / กำหนดเอง 👁] ","color":"green","bold":true},{"text":"[คลิกเพื่อซ่อนเกราะทั้งหมด]","color":"aqua","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger od_armor"},"hover_event":{"action":"show_text","value":"คลิกเพื่อซ่อนชุดเกราะทุกชิ้นทันที"}}]

# Per-Slot Toggles Header
tellraw @s ["",{"text":"\n🎯 ตั้งค่าแยกชิ้นส่วน (คลิกที่ปุ่มเพื่อเปิด/ปิด):","color":"yellow","bold":true}]

# Head (Helmet)
execute if score @s od_ar_head matches 1 run tellraw @s ["",{"text":"  🎩 หมวก (Helmet): ","color":"white"},{"text":"[ซ่อนอยู่ HIDDEN ✔]","color":"aqua","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger od_hide_head"},"hover_event":{"action":"show_text","value":"คลิกเพื่อแสดงหมวก (Show Helmet)"}}]
execute if score @s od_ar_head matches 0 run tellraw @s ["",{"text":"  🎩 หมวก (Helmet): ","color":"white"},{"text":"[แสดงปกติ VISIBLE 👁]","color":"green","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger od_hide_head"},"hover_event":{"action":"show_text","value":"คลิกเพื่อซ่อนหมวก (Hide Helmet)"}}]

# Chest (Chestplate / Elytra)
execute if score @s od_ar_chest matches 1 run tellraw @s ["",{"text":"  👕 เสื้อเกราะ/ปีก (Chest): ","color":"white"},{"text":"[ซ่อนอยู่ HIDDEN ✔]","color":"aqua","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger od_hide_chest"},"hover_event":{"action":"show_text","value":"คลิกเพื่อแสดงเสื้อเกราะ/ปีก Elytra"}}]
execute if score @s od_ar_chest matches 0 run tellraw @s ["",{"text":"  👕 เสื้อเกราะ/ปีก (Chest): ","color":"white"},{"text":"[แสดงปกติ VISIBLE 👁]","color":"green","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger od_hide_chest"},"hover_event":{"action":"show_text","value":"คลิกเพื่อซ่อนเสื้อเกราะ/ปีก Elytra"}}]

# Legs (Leggings)
execute if score @s od_ar_legs matches 1 run tellraw @s ["",{"text":"  👖 กางเกง (Leggings): ","color":"white"},{"text":"[ซ่อนอยู่ HIDDEN ✔]","color":"aqua","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger od_hide_legs"},"hover_event":{"action":"show_text","value":"คลิกเพื่อแสดงกางเกงเกราะ"}}]
execute if score @s od_ar_legs matches 0 run tellraw @s ["",{"text":"  👖 กางเกง (Leggings): ","color":"white"},{"text":"[แสดงปกติ VISIBLE 👁]","color":"green","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger od_hide_legs"},"hover_event":{"action":"show_text","value":"คลิกเพื่อซ่อนกางเกงเกราะ"}}]

# Feet (Boots)
execute if score @s od_ar_feet matches 1 run tellraw @s ["",{"text":"  🥾 รองเท้า (Boots): ","color":"white"},{"text":"[ซ่อนอยู่ HIDDEN ✔]","color":"aqua","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger od_hide_feet"},"hover_event":{"action":"show_text","value":"คลิกเพื่อแสดงรองเท้าเกราะ"}}]
execute if score @s od_ar_feet matches 0 run tellraw @s ["",{"text":"  🥾 รองเท้า (Boots): ","color":"white"},{"text":"[แสดงปกติ VISIBLE 👁]","color":"green","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger od_hide_feet"},"hover_event":{"action":"show_text","value":"คลิกเพื่อซ่อนรองเท้าเกราะ"}}]

# Extra Settings
tellraw @s ["",{"text":"\n⚙ ตั้งค่าระบบเสริม:","color":"gold","bold":true}]
execute if score @s od_ar_gest_on matches 1 run tellraw @s ["",{"text":"  🤸 คีย์ลัดในเกม (ก้มหน้าสุด + Shift 2 ครั้ง): ","color":"gray"},{"text":"[ON ✔]","color":"green","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger od_armor_gest"},"hover_event":{"action":"show_text","value":"คลิกเพื่อปิดคีย์ลัดก้มหน้ากด Shift"}}]
execute if score @s od_ar_gest_on matches 0 run tellraw @s ["",{"text":"  🤸 คีย์ลัดในเกม (ก้มหน้าสุด + Shift 2 ครั้ง): ","color":"gray"},{"text":"[OFF ✖]","color":"red","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger od_armor_gest"},"hover_event":{"action":"show_text","value":"คลิกเพื่อเปิดคีย์ลัดก้มหน้ากด Shift"}}]

execute if score @s od_ar_sfx_on matches 1 run tellraw @s ["",{"text":"  🔊 เสียงและพาร์ติเคิลเอฟเฟกต์: ","color":"gray"},{"text":"[ON ✔]","color":"green","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger od_armor_sfx"},"hover_event":{"action":"show_text","value":"คลิกเพื่อปิดเสียงและพาร์ติเคิล"}}]
execute if score @s od_ar_sfx_on matches 0 run tellraw @s ["",{"text":"  🔊 เสียงและพาร์ติเคิลเอฟเฟกต์: ","color":"gray"},{"text":"[OFF ✖]","color":"red","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger od_armor_sfx"},"hover_event":{"action":"show_text","value":"คลิกเพื่อเปิดเสียงและพาร์ติเคิล"}}]

tellraw @s ["",{"text":"\n💡 ทิป: ก้มหน้ามองเท้าตัวเองแล้วกด Shift 2 ครั้ง (หรือ Shift+Space) เพื่อสลับซ่อน/แสดงเกราะได้ทันที!\n","color":"gray"},{"text":"========================================","color":"dark_gray"}]
