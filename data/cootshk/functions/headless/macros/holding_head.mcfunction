$scoreboard players set $(Name) headless_Lives 1
$tellraw @s ["", {"text": "[", "color": "yellow"}, {"text": "Headless", "color": "gold"}, {"text": "] ", "color": "yellow"}, {"text": "Revived $(Name)!", "color": "green"}]
$tellraw $(Name) ["", {"text": "[", "color": "yellow"}, {"text": "Headless", "color": "gold"}, {"text": "] ", "color": "yellow"}, {"text": "You have been revived!", "color": "green"}]
$clear @s player_head{SkullOwner: {Name: $(Name)}}