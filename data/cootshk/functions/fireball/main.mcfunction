scoreboard objectives add Fireball trigger "Fireball"
scoreboard objectives add FireballUsable dummy "Can use fireballs"
scoreboard objectives add ExplosionPower trigger "Fireball Explosion Power"
scoreboard players enable @s ExplosionPower
execute store result storage cootshk:fireball currentplayer.Power byte 1.0 run scoreboard players get @s ExplosionPower
execute if score @s FireballUsable matches 1 if score @s Fireball matches 0 run scoreboard players enable @s Fireball
execute if score @s FireballUsable matches 1 unless score @s Fireball matches 0 run function cootshk:fireball/fireball with storage cootshk:fireball currentplayer

function cootshk:fireball/debug/fireballusable