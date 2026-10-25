# Overdose Invisible Armor - Load Function
# Minecraft Java Edition 26.3
# Author: teamthee

# Core State & Per-Slot Visibility Objectives (1 = Hidden, 0 = Visible)
scoreboard objectives add od_ar_init dummy
scoreboard objectives add od_ar_all dummy
scoreboard objectives add od_ar_head dummy
scoreboard objectives add od_ar_chest dummy
scoreboard objectives add od_ar_legs dummy
scoreboard objectives add od_ar_feet dummy
scoreboard objectives add od_ar_gest_on dummy
scoreboard objectives add od_ar_sfx_on dummy

# In-Game Gesture Detection Objectives (Look Down + Double-Shift or Shift+Jump)
scoreboard objectives add od_ar_sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add od_ar_jump minecraft.custom:minecraft.jump
scoreboard objectives add od_ar_was_snk dummy
scoreboard objectives add od_ar_snk_cnt dummy
scoreboard objectives add od_ar_snk_tmr dummy

# Interactive Player Triggers (No OP required)
scoreboard objectives add od_armor trigger
scoreboard objectives add od_armor_menu trigger
scoreboard objectives add od_hide_head trigger
scoreboard objectives add od_hide_chest trigger
scoreboard objectives add od_hide_legs trigger
scoreboard objectives add od_hide_feet trigger
scoreboard objectives add od_armor_gest trigger
scoreboard objectives add od_armor_sfx trigger

# Initialize metadata storage
data modify storage overdose_armor:main info set value {name:"Overdose Invisible Armor",author:"teamthee",version:"26.3"}

# Broadcast loaded message
tellraw @a ["",{"text":"[","color":"gray"},{"text":"Overdose","color":"red","bold":true},{"text":"] ","color":"gray"},{"text":"Invisible Armor (Java 26.3) loaded! by ","color":"green"},{"text":"teamthee","color":"aqua","bold":true},{"text":" - ","color":"gray"},{"text":"[Armor Menu]","color":"yellow","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger od_armor_menu"},"hover_event":{"action":"show_text","value":"คลิกเพื่อเปิดเมนูตั้งค่าซ่อนชุดเกราะ (Overdose Invisible Armor)"}}]
