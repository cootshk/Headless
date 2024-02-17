# Give strength
execute store result score @s headless_HeadCount run clear @s player_head{SkullOwner:{}} 0
execute store result score @s headless_Strength run scoreboard players get @s headless_HeadCount
scoreboard players add @s headless_Strength 1
execute store result storage cootshk:headless/strength Strength int 1 run scoreboard players get @s headless_Strength
function cootshk:headless/macros/apply_strength with storage cootshk:headless/strength
#execute unless data entity @s SelectedItem.tag.SkullOwner.Name run say no head
execute unless data entity @s SelectedItem.tag.SkullOwner.Name run return 0
# assert holding a head
function cootshk:headless/macros/holding_head with entity @s SelectedItem.tag.SkullOwner
#data remove entity @s SelectedItem
#tell @a $(Name)
