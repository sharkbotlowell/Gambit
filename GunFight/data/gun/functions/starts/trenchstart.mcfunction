function gun:teams/randomize
scoreboard players set #mode mode_id 0
scoreboard players set #mode mode_respawns 0
scoreboard players set #map map_id 3
execute in minecraft:overworld run tp @a[tag=Red,gamemode=!spectator,gamemode=!creative] 110.49 15.00 -320.44 395.46 0.60
execute in minecraft:overworld run tp @a[tag=Blue,gamemode=!spectator,gamemode=!creative] -4.60 16.00 -177.36 227.61 -1.39
function gun:starts/general
scoreboard objectives setdisplay sidebar teams