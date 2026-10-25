# Overdose - Activation Sound & Visual FX
# Plays at the exact moment the charge hits 100%

# 1. High-energy triumph fanfare & levelup ding
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1.0 1.2
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1.0 1.2

# 2. Resonant power surge & conduit sub-bass
playsound minecraft:block.beacon.activate player @s ~ ~ ~ 1.2 1.5
playsound minecraft:block.conduit.activate player @s ~ ~ ~ 1.2 1.2

# 3. Modern energy blast crackle
playsound minecraft:block.trial_spawner.spawn_mob player @s ~ ~ ~ 1.0 1.6

# 4. Burst of energy particles
particle minecraft:totem_of_undying ~ ~1 ~ 0.4 0.6 0.4 0.15 40
particle minecraft:electric_spark ~ ~1 ~ 0.4 0.6 0.4 0.1 25
