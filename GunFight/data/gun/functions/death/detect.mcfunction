execute as @a[tag=Red,gamemode=!creative,gamemode=!spectator,nbt={Health:0.0f}] run gamemode spectator @s
execute as @a[tag=Blue,gamemode=!creative,gamemode=!spectator,nbt={Health:0.0f}] run gamemode spectator @s

execute if score #map map_id matches 1 as @a[tag=Red,gamemode=spectator,tag=!gun_dead] run tp @s 303.63 38.00 -38.84 -58.03 9.75
execute if score #map map_id matches 1 as @a[tag=Blue,gamemode=spectator,tag=!gun_dead] run tp @s 308.43 34.00 156.65 628.82 -0.15
execute if score #map map_id matches 2 as @a[tag=Red,gamemode=spectator,tag=!gun_dead] run tp @s 1041.66 39.00 -110.46 129.62 0.90
execute if score #map map_id matches 2 as @a[tag=Blue,gamemode=spectator,tag=!gun_dead] run tp @s 879.45 39.00 -274.27 310.52 3.75
execute if score #map map_id matches 3 as @a[tag=Red,gamemode=spectator,tag=!gun_dead] run tp @s 110.49 15.00 -320.44 395.46 0.60
execute if score #map map_id matches 3 as @a[tag=Blue,gamemode=spectator,tag=!gun_dead] run tp @s -4.60 16.00 -177.36 227.61 -1.39
execute if score #map map_id matches 99 as @a[tag=Red,gamemode=spectator,tag=!gun_dead] run tp @s 1000.00 64.00 1000.00 180.00 0.00
execute if score #map map_id matches 99 as @a[tag=Blue,gamemode=spectator,tag=!gun_dead] run tp @s 1020.00 64.00 1020.00 0.00 0.00

execute as @a[tag=Red,gamemode=spectator,tag=!gun_dead] run tag @s add gun_dead
execute as @a[tag=Blue,gamemode=spectator,tag=!gun_dead] run tag @s add gun_dead

execute if score #mode mode_respawns matches 1 as @a[tag=Red,gamemode=spectator,tag=gun_dead,scores={tdm_respawn_timer=0}] run scoreboard players add #Blue tdm_blue_kills 1
execute if score #mode mode_respawns matches 1 as @a[tag=Blue,gamemode=spectator,tag=gun_dead,scores={tdm_respawn_timer=0}] run scoreboard players add #Red tdm_red_kills 1
execute if score #mode mode_respawns matches 1 as @a[tag=gun_dead,gamemode=spectator,scores={tdm_respawn_timer=0}] run scoreboard players set @s tdm_respawn_timer 100

execute as @a[tag=gun_dead,gamemode=!spectator] run tag @s remove gun_dead
scoreboard players set @a[gamemode=!spectator] tdm_respawn_timer 0
