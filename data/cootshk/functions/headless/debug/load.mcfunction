
# Debug mode is off
execute unless score Debug headless_Settings matches 1 run return 0

# Now, debug mode must be on
#execute as Cootshk run function cootshk:headless/debug/gamemode {player:Cootshk}
#execute as SaltyHxH run function cootshk:headless/debug/gamemode {player:SaltyHxH}
function cootshk:headless/debug/gamemode
execute as Cootshk if entity @s run function cootshk:headless/debug/allow_overrides
execute as SaltyHxH if entity @s run function cootshk:headless/debug/allow_overrides