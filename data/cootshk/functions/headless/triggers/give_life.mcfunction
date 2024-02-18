scoreboard players set @s GiveLife 0

execute if score @s headless_Lives matches 0..1 run tellraw @s ["", {"text": "[", "color": "yellow"},{"text": "Headless","color": "gold"},{"text": "]","color": "yellow"}, " ", {"text": "You have no lives left to give!","color": "red"}]
execute if score @s headless_Lives matches 0..1 run return 0

scoreboard players remove @s headless_Lives 1
give @s knowledge_book{display:{Name:"{\"text\":\"Life\",\"color\":\"gold\",\"italic\":false}",Lore:["{\"text\":\"Place in your offhand to redeem.\",\"color\":\"gray\",\"italic\": false}"]}} 1
tellraw @s ["", {"text": "[", "color": "yellow"},{"text": "Headless","color": "gold"},{"text": "]","color": "yellow"}, " ", {"text": "You have given a life!","color": "green"}]
