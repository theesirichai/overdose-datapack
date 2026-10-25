# Overdose Invisible Armor - In-Game Gesture Detection
# Gesture: Look straight down (pitch 75..90) + Double-Tap Shift (Sneak) OR Shift + Jump (Space)

# Reset combo if player looks up away from feet
execute if entity @s[x_rotation=-90..74] if score @s od_ar_snk_tmr matches 1.. run scoreboard players set @s od_ar_snk_tmr 0
execute if entity @s[x_rotation=-90..74] if score @s od_ar_snk_cnt matches 1.. run scoreboard players set @s od_ar_snk_cnt 0

# Combo B: Looking down + Fresh Shift press (rising edge)
execute if entity @s[x_rotation=75..90] if score @s od_ar_sneak matches 1.. if score @s od_ar_was_snk matches 0 run scoreboard players add @s od_ar_snk_cnt 1
execute if entity @s[x_rotation=75..90] if score @s od_ar_sneak matches 1.. if score @s od_ar_was_snk matches 0 run scoreboard players set @s od_ar_snk_tmr 25

# Combo A: Looking down + Holding Shift + Pressing Jump (Space) -> Set count to 2 to trigger immediately
execute if entity @s[x_rotation=75..90] if score @s od_ar_sneak matches 1.. if score @s od_ar_jump matches 1.. run scoreboard players set @s od_ar_snk_cnt 2

# First Shift press hint on Actionbar
execute if entity @s[x_rotation=75..90] if score @s od_ar_sneak matches 1.. if score @s od_ar_was_snk matches 0 if score @s od_ar_snk_cnt matches 1 if score @s od_ar_all matches 1 run title @s actionbar ["",{"text":"🛡 [Overdose] ","color":"red","bold":true},{"text":"เกราะ: ","color":"gray"},{"text":"ซ่อนอยู่ (HIDDEN) ","color":"aqua","bold":true},{"text":"| กด ","color":"gray"},{"text":"Shift ซ้ำ","color":"yellow","bold":true},{"text":" หรือ ","color":"gray"},{"text":"Space","color":"yellow","bold":true},{"text":" เพื่อแสดงเกราะ","color":"white"}]
execute if entity @s[x_rotation=75..90] if score @s od_ar_sneak matches 1.. if score @s od_ar_was_snk matches 0 if score @s od_ar_snk_cnt matches 1 unless score @s od_ar_all matches 1 run title @s actionbar ["",{"text":"🛡 [Overdose] ","color":"red","bold":true},{"text":"เกราะ: ","color":"gray"},{"text":"แสดงอยู่ (VISIBLE) ","color":"green","bold":true},{"text":"| กด ","color":"gray"},{"text":"Shift ซ้ำ","color":"yellow","bold":true},{"text":" หรือ ","color":"gray"},{"text":"Space","color":"yellow","bold":true},{"text":" เพื่อซ่อนเกราะ","color":"white"}]

# Trigger toggle when count reaches 2+
execute if score @s od_ar_snk_cnt matches 2.. run function overdose_armor:trigger/toggle_all
execute if score @s od_ar_snk_cnt matches 2.. run scoreboard players set @s od_ar_snk_tmr 0
execute if score @s od_ar_snk_cnt matches 2.. run scoreboard players set @s od_ar_snk_cnt 0

# Update timer window
execute if score @s od_ar_snk_tmr matches 1.. run scoreboard players remove @s od_ar_snk_tmr 1
execute if score @s od_ar_snk_tmr matches 0 run scoreboard players set @s od_ar_snk_cnt 0

# Track whether player was sneaking this tick for rising-edge detection next tick
execute if score @s od_ar_sneak matches 1.. run scoreboard players set @s od_ar_was_snk 1
execute unless score @s od_ar_sneak matches 1.. run scoreboard players set @s od_ar_was_snk 0
