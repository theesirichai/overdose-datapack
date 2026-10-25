# Overdose Invisible Armor - Per-Player Tick
# Executed as @s at @s

# Re-enable interactive player triggers
scoreboard players enable @s od_armor
scoreboard players enable @s od_armor_menu
scoreboard players enable @s od_hide_head
scoreboard players enable @s od_hide_chest
scoreboard players enable @s od_hide_legs
scoreboard players enable @s od_hide_feet
scoreboard players enable @s od_armor_gest
scoreboard players enable @s od_armor_sfx

# Handle trigger commands
execute if score @s od_armor matches 1.. run function overdose_armor:trigger/toggle_all
execute if score @s od_armor_menu matches 1.. run function overdose_armor:trigger/menu
execute if score @s od_hide_head matches 1.. run function overdose_armor:trigger/toggle_head
execute if score @s od_hide_chest matches 1.. run function overdose_armor:trigger/toggle_chest
execute if score @s od_hide_legs matches 1.. run function overdose_armor:trigger/toggle_legs
execute if score @s od_hide_feet matches 1.. run function overdose_armor:trigger/toggle_feet
execute if score @s od_armor_gest matches 1.. run function overdose_armor:trigger/toggle_gesture
execute if score @s od_armor_sfx matches 1.. run function overdose_armor:trigger/toggle_sfx

# Check in-game gesture shortcut (Look straight down + Double-Shift or Shift+Jump)
execute if score @s od_ar_gest_on matches 1 run function overdose_armor:player/gesture_check
scoreboard players set @s od_ar_sneak 0
scoreboard players set @s od_ar_jump 0

# Apply or restore invisibility on equipped armor slots
function overdose_armor:player/update_armor

# Automatically restore any unequipped armor in hotbar, inventory, offhand, or dropped on ground
execute if items entity @s hotbar.* *[minecraft:custom_data~{od_hidden_armor:1b}] run function overdose_armor:restore/hotbar
execute if items entity @s inventory.* *[minecraft:custom_data~{od_hidden_armor:1b}] run function overdose_armor:restore/inventory
execute if items entity @s weapon.offhand *[minecraft:custom_data~{od_hidden_armor:1b}] run function overdose_armor:restore/offhand
execute as @e[type=minecraft:item,distance=..6] if items entity @s contents *[minecraft:custom_data~{od_hidden_armor:1b}] run function overdose_armor:restore/dropped
