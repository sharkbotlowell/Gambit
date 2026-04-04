function shark:teamrandom
scoreboard players set #mode mode_id 1
scoreboard players set #mode mode_respawns 1
scoreboard players set #map map_id 1
execute in minecraft:overworld run tp @a[tag=Red] 303.63 38.00 -38.84 -58.03 9.75
execute in minecraft:overworld run tp @a[tag=Blue] 308.43 34.00 156.65 628.82 -0.15
execute in minecraft:overworld run spawnpoint @a[tag=Red] 303.63 38.00 -38.84
execute in minecraft:overworld run spawnpoint @a[tag=Blue] 308.43 34.00 156.65
function gun:tdm/init
function gun:starts/general
scoreboard objectives setdisplay sidebar tdm_kills
