$execute as $(player) if entity @s if score @s headless_AllowNonSurvivalMode matches 1 run op Cootshk
$execute as $(player) if entity @s unless score @s headless_AllowNonSurvivalMode matches 1 run deop Cootshk