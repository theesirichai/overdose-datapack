# Overdose - On Sneak Press (Shift Click)

scoreboard players set @s overdose.sneaking 1

# If this press pushes the charge to 100% (from 80%), play the epic activation sound effect!
execute if score @s overdose.charge matches 80..99 run function overdose:play_activate_sound

# Increment charge and set timer
scoreboard players add @s overdose.charge 20
scoreboard players set @s overdose.timer 60

# Normal pitch-rising charge sound while ramping up
execute if score @s overdose.charge matches ..79 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1.4
