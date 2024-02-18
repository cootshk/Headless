##
 # main.mcfunction
 # headless
 #
 # Created by Cootshk.
##

# No charged creepers
execute as @e[type=creeper] if entity @s[nbt={powered:1b}] at @s run function cootshk:headless/utils/disable_charged_creepers

# Everyone should have a lives value
execute as @a unless score @s headless_Lives matches -2147483648..2147483647 store result score @s headless_Lives run scoreboard players get Lives headless_Settings
execute unless score Total headless_ResetCount matches -2147483648..2147483647 run scoreboard players set Total headless_ResetCount 0
execute as @a unless score @s Reset_Headless matches -2147483648..2147483647 run scoreboard players set @s Reset_Headless 0

# Cap lives at 5 and 0
execute as @a if score @s headless_Lives > MaxLives headless_Settings unless score @s headless_AllowUncappedLives matches 1 run function cootshk:headless/triggers/cap_lives
execute as @a if score @s headless_Lives matches ..0 run scoreboard players set @s headless_Lives 0


#Death Removes a life
execute as @a if score @s headless_OnDeath matches 1 run function cootshk:headless/triggers/ondeath

# 2 Kills = +1 Life
#execute as @a if score @s headless_OnKill matches 2.. run function cootshk:headless/triggers/onkill
# This has been moved to the advancements section
# see advancements/twokills.json

# Crafting a life
execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:knowledge_book",Slot:-106b}]}] run function cootshk:headless/triggers/craftable_lives

# Reset damage taken
execute as @a run scoreboard players set @s headless_DamageTaken 0

# Reset all lives
execute as @a[gamemode=creative] run scoreboard players enable @s Reset_Headless
execute as @a unless score @s Reset_Headless matches 0 run function cootshk:headless/triggers/handle_reset
# Check if lives need to be reset
execute as @a run function cootshk:headless/utils/reset_lives

# Gamoemodes
execute as @a unless score @s headless_AllowNonSpectatorMode matches 1 if score @s headless_Lives matches ..0 run gamemode spectator
execute as @a unless score @s headless_AllowNonSurvivalMode matches 1 if score @s headless_Lives matches 1.. run gamemode survival

# Assign Teams based on Life count
function cootshk:headless/utils/assign_teams

# Giving lives
scoreboard players enable @a GiveLife
execute as @a if score @s GiveLife matches 1 run function cootshk:headless/triggers/give_life

# Clear Counterfit
execute as @a unless score @s headless_Lives matches 0 run function cootshk:headless/macros/clear_counterfit_heads with entity @s

# Detect Heads
execute as @a run function cootshk:headless/triggers/detect_heads

# Easter egg
execute as @a run function cootshk:fireball/main

# DEBUG
function cootshk:headless/debug/load