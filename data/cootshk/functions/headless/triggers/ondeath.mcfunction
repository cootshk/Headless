scoreboard players remove @s headless_OnDeath 1
scoreboard players remove @s headless_Lives 1
tellraw @s ["", {"text": "[", "color": "yellow"}, {"text": "Headless", "color": "gold"}, {"text": "] ", "color": "yellow"}, " ", {"text": "You Died!", "color": "red"}]
tellraw @s ["", {"text": "[", "color": "yellow"}, {"text": "Headless", "color": "gold"}, {"text": "] ", "color": "yellow"}, " ", {"text": "You have ", "color": "white"},{"score": {"name": "@s", "objective": "headless_Lives"}, "color": "red"}, {"text": " lives remaining!", "color": "white"}]