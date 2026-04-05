execute as @a[gamemode=!creative,tag=!gun_dead,tag=!gun_just_died] if score @s gun_deaths > @s gun_deaths_prev run tag @s add gun_just_died

execute unless score #mode mode_respawns matches 1 as @a[tag=gun_just_died,gamemode=!creative,gamemode=!spectator] run gamemode spectator @s
execute unless score #mode mode_respawns matches 1 as @a[tag=gun_just_died] run tag @s add gun_spec_tp_pending
execute unless score #mode mode_respawns matches 1 as @a[tag=gun_just_died] run scoreboard players set @s spec_respawn_timer 3
execute unless score #mode mode_respawns matches 1 as @a[tag=gun_just_died] run tag @s remove gun_just_died

execute unless score #mode mode_respawns matches 1 as @a[tag=gun_spec_tp_pending,scores={spec_respawn_timer=1..}] run scoreboard players remove @s spec_respawn_timer 1
execute unless score #mode mode_respawns matches 1 if score #map map_id matches 1 as @a[tag=Red,tag=gun_spec_tp_pending,gamemode=spectator,scores={spec_respawn_timer=..0}] run tp @s 303.63 38.00 -38.84 -58.03 9.75
execute unless score #mode mode_respawns matches 1 if score #map map_id matches 1 as @a[tag=Blue,tag=gun_spec_tp_pending,gamemode=spectator,scores={spec_respawn_timer=..0}] run tp @s 308.43 34.00 156.65 628.82 -0.15
execute unless score #mode mode_respawns matches 1 if score #map map_id matches 2 as @a[tag=Red,tag=gun_spec_tp_pending,gamemode=spectator,scores={spec_respawn_timer=..0}] run tp @s 1041.66 39.00 -110.46 129.62 0.90
execute unless score #mode mode_respawns matches 1 if score #map map_id matches 2 as @a[tag=Blue,tag=gun_spec_tp_pending,gamemode=spectator,scores={spec_respawn_timer=..0}] run tp @s 879.45 39.00 -274.27 310.52 3.75
execute unless score #mode mode_respawns matches 1 if score #map map_id matches 3 as @a[tag=Red,tag=gun_spec_tp_pending,gamemode=spectator,scores={spec_respawn_timer=..0}] run tp @s 110.49 15.00 -320.44 395.46 0.60
execute unless score #mode mode_respawns matches 1 if score #map map_id matches 3 as @a[tag=Blue,tag=gun_spec_tp_pending,gamemode=spectator,scores={spec_respawn_timer=..0}] run tp @s -4.60 16.00 -177.36 227.61 -1.39

execute unless score #mode mode_respawns matches 1 as @a[tag=gun_spec_tp_pending,gamemode=spectator,scores={spec_respawn_timer=..0}] run tag @s add gun_dead
execute unless score #mode mode_respawns matches 1 as @a[tag=gun_spec_tp_pending,gamemode=spectator,scores={spec_respawn_timer=..0}] run tag @s remove gun_spec_tp_pending
execute unless score #mode mode_respawns matches 1 as @a[tag=gun_spec_tp_pending,gamemode=spectator,scores={spec_respawn_timer=..0}] run scoreboard players set @s spec_respawn_timer 0

execute if score #mode mode_respawns matches 1 as @a[tag=gun_just_died,gamemode=!creative] run tag @s add gun_dead
execute if score #mode mode_respawns matches 1 as @a[tag=gun_just_died] run effect give @s minecraft:blindness 2 0 true
execute if score #mode mode_respawns matches 1 as @a[tag=Red,tag=gun_just_died] if score @s gun_deaths > @s tdm_deaths_counted run scoreboard players add #Blue tdm_blue_kills 1
execute if score #mode mode_respawns matches 1 as @a[tag=Blue,tag=gun_just_died] if score @s gun_deaths > @s tdm_deaths_counted run scoreboard players add #Red tdm_red_kills 1
execute if score #mode mode_respawns matches 1 as @a[tag=gun_just_died] if score @s gun_deaths > @s tdm_deaths_counted run scoreboard players set @s tdm_respawn_timer 40
execute if score #mode mode_respawns matches 1 as @a[tag=gun_just_died] if score @s gun_deaths > @s tdm_deaths_counted run scoreboard players operation @s tdm_deaths_counted = @s gun_deaths
execute if score #mode mode_respawns matches 1 as @a[tag=gun_just_died] run tag @s remove gun_just_died

execute unless score #mode mode_respawns matches 1 as @a[tag=gun_dead,gamemode=!spectator] run tag @s remove gun_dead
execute unless score #mode mode_respawns matches 1 as @a[tag=gun_spec_tp_pending,gamemode=!spectator] run tag @s remove gun_spec_tp_pending
execute unless score #mode mode_respawns matches 1 run scoreboard players set @a[gamemode=!spectator] tdm_respawn_timer 0
execute unless score #mode mode_respawns matches 1 run scoreboard players set @a[gamemode=!spectator] spec_respawn_timer 0

execute as @a[gamemode=!creative] run scoreboard players operation @s gun_deaths_prev = @s gun_deaths
