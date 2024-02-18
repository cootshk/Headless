##
 # reset.mcfunction
 # headless
 #
 # Created by Cootshk.
##

tellraw @a "Headless reloaded successfully!"

scoreboard objectives add headless_Lives dummy "Lives"
scoreboard objectives add headless_ResetCount dummy "Number of Resets"
scoreboard objectives add headless_Reset trigger "Reset all lives"
scoreboard objectives add headless_OnDeath minecraft.killed_by:minecraft.player "Has Died?"
scoreboard objectives add headless_OnKill minecraft.custom:player_kills "Has Killed?"
#scoreboard objectives add headless_KillCount dummy "Number of Kills"
scoreboard objectives add headless_Strength dummy "Added strength from heads"
scoreboard objectives add headless_Settings dummy "Settings"
scoreboard objectives add headless_HeadCount dummy "Number of Heads"

# Overrides
scoreboard objectives add headless_AllowNonSurvivalMode trigger "Allow gamemode changing with lives > 0"
scoreboard objectives add headless_AllowNonSpectatorMode trigger "Allow gamemode changing with lives = 0"
scoreboard objectives add headless_AllowNonTeamColor trigger "Allow changing your team color"
scoreboard objectives add headless_AllowUncappedLives trigger "Allow lives to go over the maximum"
scoreboard objectives add headless_AllowDupedHeads trigger "Prevent heads from being cleared"

# Trigger Objectives
scoreboard objectives add Reset_Headless trigger "Reset Lives"


team add headless_0
team add headless_1
team add headless_2
team add headless_3
team add headless_4
team add headless_5

team modify headless_0 color gray
team modify headless_1 color dark_red
team modify headless_2 color gold
team modify headless_3 color yellow
team modify headless_4 color green
team modify headless_5 color dark_green

function cootshk:headless/macros/set_team_attributes {team:0}
function cootshk:headless/macros/set_team_attributes {team:1}
function cootshk:headless/macros/set_team_attributes {team:2}
function cootshk:headless/macros/set_team_attributes {team:3}
function cootshk:headless/macros/set_team_attributes {team:4}
function cootshk:headless/macros/set_team_attributes {team:5}

execute unless score HasLoaded headless_Settings matches 1 run function cootshk:headless/load/initial_load
function cootshk:headless/main