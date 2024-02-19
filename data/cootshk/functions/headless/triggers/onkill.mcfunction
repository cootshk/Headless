advancement revoke @s only cootshk:headless/twokills
scoreboard players add @s headless_OnKill 1
execute unless score @s headless_OnKill >= KillCount headless_Settings run return 0
scoreboard players operation @s headless_OnKill -= KillCount headless_Settings
scoreboard players add @s headless_Lives 1
tellraw @s ["",{"text": "[","color": "yellow"},{"text": "Headless","color": "gold"},{"text": "]","color": "yellow"}," ",{"text": "You gained a life!", "color": "green"}]
tellraw @s ["", {"text": "[", "color": "yellow"}, {"text": "Headless", "color": "gold"}, {"text": "]", "color": "yellow"}, " ", {"text": "You have ", "color": "green"}, {"score": {"name": "@s", "objective": "headless_Lives"}, "color": "green"}, {"text": " lives!", "color": "green"}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1