##
 # reset_lives.mcfunction
 # 
 #
 # Created by Cootshk.
##

# Reset Lives
execute if entity @s[scores={Reset_Headless=1..}] if entity @s[gamemode=creative] run scoreboard players add ResetCount headless_Total 1
execute if entity @s[scores={Reset_Headless=1..}] unless entity @s[gamemode=creative] run tellraw @s ["",{"text": "[","color": "yellow"},{"text": "Headless","color": "gold"},{"text": "]","color": "gold"}," ",{"text": "You must be in creative mode to reset lives.","color":"red"}]
execute if entity @s[scores={Reset_Headless=1..}] run scoreboard players set @s Reset_Headless 0

execute unless score @s headless_ResetCount = Total headless_ResetCount run scoreboard players reset @s headless_Lives
execute unless score @s headless_ResetCount = Total headless_ResetCount store result score @s headless_ResetCount run scoreboard players get Total headless_ResetCount