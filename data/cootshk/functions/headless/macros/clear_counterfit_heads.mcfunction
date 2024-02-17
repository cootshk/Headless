#$tell @a $(UUID)
$execute as @a unless score @s headless_AllowDupedHeads matches 1 run clear @s minecraft:player_head{AllowStrength:1b,SkullOwner:{Id:$(UUID)}}
#$tell @a $(UUID)