# Overdose Invisible Armor - Update Equipped Armor Slots
# Only modifies items when their state does not match the target visibility (0 tick overhead when unchanged)

# HEAD (Helmet / Turtle Helmet)
execute if score @s od_ar_head matches 1 if items entity @s armor.head #overdose_armor:head_armor unless items entity @s armor.head *[minecraft:custom_data~{od_hidden_armor:1b}] run item modify entity @s armor.head overdose_armor:hide_head
execute if score @s od_ar_head matches 0 if items entity @s armor.head *[minecraft:custom_data~{od_hidden_armor:1b}] run item modify entity @s armor.head overdose_armor:restore

# CHEST (Chestplate / Elytra)
execute if score @s od_ar_chest matches 1 if items entity @s armor.chest #overdose_armor:chest_armor unless items entity @s armor.chest *[minecraft:custom_data~{od_hidden_armor:1b}] run item modify entity @s armor.chest overdose_armor:hide_chest
execute if score @s od_ar_chest matches 0 if items entity @s armor.chest *[minecraft:custom_data~{od_hidden_armor:1b}] run item modify entity @s armor.chest overdose_armor:restore

# LEGS (Leggings)
execute if score @s od_ar_legs matches 1 if items entity @s armor.legs #overdose_armor:leg_armor unless items entity @s armor.legs *[minecraft:custom_data~{od_hidden_armor:1b}] run item modify entity @s armor.legs overdose_armor:hide_legs
execute if score @s od_ar_legs matches 0 if items entity @s armor.legs *[minecraft:custom_data~{od_hidden_armor:1b}] run item modify entity @s armor.legs overdose_armor:restore

# FEET (Boots)
execute if score @s od_ar_feet matches 1 if items entity @s armor.feet #overdose_armor:foot_armor unless items entity @s armor.feet *[minecraft:custom_data~{od_hidden_armor:1b}] run item modify entity @s armor.feet overdose_armor:hide_feet
execute if score @s od_ar_feet matches 0 if items entity @s armor.feet *[minecraft:custom_data~{od_hidden_armor:1b}] run item modify entity @s armor.feet overdose_armor:restore
