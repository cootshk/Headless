execute if score @s Fireball matches 2 run scoreboard players set @s Fireball 0
scoreboard players enable @s Fireball

execute at @s as @e[distance=.5..,type=minecraft:fireball] if entity @s[nbt={Motion:[0.0,0.0,0.0]}] run kill @s
execute at @s as @e[distance=...5,type=minecraft:fireball] if entity @s[nbt={Motion:[0.0,0.0,0.0]}] run tp @p
$execute at @s unless entity @e[distance=..5,type=minecraft:fireball] run summon fireball ~ ~ ~ {ExplosionPower:$(Power)}