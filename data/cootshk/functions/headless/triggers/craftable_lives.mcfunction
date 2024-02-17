clear @s knowledge_book 1
scoreboard players add @s headless_Lives 1
tellraw @s ["", {"text": "[", "color": "yellow"}, {"text": "Headless", "color": "gold"}, {"text": "]", "color": "yellow"}, " ", {"text": "You have gained a life!", "color": "green"}]
tellraw @s ["", {"text": "[", "color": "yellow"}, {"text": "Headless", "color": "gold"}, {"text": "]", "color": "yellow"}, " ", {"text": "You now have ", "color": "white"}, {"score": {"name": "@s", "objective": "headless_Lives"}, "color": "green"}, {"text": " lives!", "color": "white"}]