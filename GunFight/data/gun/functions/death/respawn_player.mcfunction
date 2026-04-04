gamemode adventure @s
clear @s
function gun:death/loadout_self

execute if score #map map_id matches 1 if entity @s[tag=Red] run spawnpoint @s 303.63 38.00 -38.84
execute if score #map map_id matches 1 if entity @s[tag=Blue] run spawnpoint @s 308.43 34.00 156.65
execute if score #map map_id matches 2 if entity @s[tag=Red] run spawnpoint @s 1041.66 39.00 -110.46
execute if score #map map_id matches 2 if entity @s[tag=Blue] run spawnpoint @s 879.45 39.00 -274.27
execute if score #map map_id matches 3 if entity @s[tag=Red] run spawnpoint @s 110.49 15.00 -320.44
execute if score #map map_id matches 3 if entity @s[tag=Blue] run spawnpoint @s -4.60 16.00 -177.36
execute if score #map map_id matches 99 if entity @s[tag=Red] run spawnpoint @s 1000.00 64.00 1000.00
execute if score #map map_id matches 99 if entity @s[tag=Blue] run spawnpoint @s 1020.00 64.00 1020.00

execute if score #map map_id matches 1 if entity @s[tag=Red] run tp @s 303.63 38.00 -38.84 -58.03 9.75
execute if score #map map_id matches 1 if entity @s[tag=Blue] run tp @s 308.43 34.00 156.65 628.82 -0.15
execute if score #map map_id matches 2 if entity @s[tag=Red] run tp @s 1041.66 39.00 -110.46 129.62 0.90
execute if score #map map_id matches 2 if entity @s[tag=Blue] run tp @s 879.45 39.00 -274.27 310.52 3.75
execute if score #map map_id matches 3 if entity @s[tag=Red] run tp @s 110.49 15.00 -320.44 395.46 0.60
execute if score #map map_id matches 3 if entity @s[tag=Blue] run tp @s -4.60 16.00 -177.36 227.61 -1.39
execute if score #map map_id matches 99 if entity @s[tag=Red] run tp @s 1000.00 64.00 1000.00 180.00 0.00
execute if score #map map_id matches 99 if entity @s[tag=Blue] run tp @s 1020.00 64.00 1020.00 0.00 0.00

scoreboard players set @s tdm_respawn_timer 0
tag @s remove gun_dead
