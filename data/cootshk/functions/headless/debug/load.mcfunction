
# Debug mode is off
execute if score Debug headless_Settings matches 0 run return 0

# Now, debug mode must be on
function cootshk:headless/debug/gamemode {player:Cootshk}

execute as Cootshk if entity @s run function cootshk:headless/debug/allow_overrides
execute as SaltyHxH if entity @s run function cootshk:headless/debug/allow_overrides