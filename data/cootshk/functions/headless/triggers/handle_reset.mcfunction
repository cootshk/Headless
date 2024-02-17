scoreboard players set @s Reset_Headless 0
execute if entity @s[gamemode=!creative] run tellraw @s ["", {"text": "[", "color": "yellow"}, {"text": "Headless", "color": "gold"}, {"text": "]", "color": "yellow"}, " ", {"text": "You must be in creative mode to use this command!", "color": "red"}]

execute if entity @s[gamemode=creative] run scoreboard players add Total headless_ResetCount 1
execute if entity @s[gamemode=creative] run tellraw @s ["", {"text": "[", "color": "yellow"}, {"text": "Headless", "color": "gold"}, {"text": "]", "color": "yellow"}, " ", {"text": "Reset Everyone's Lives!", "color": "red"}]