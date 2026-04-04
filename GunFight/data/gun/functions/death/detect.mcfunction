execute as @a[tag=Red,gamemode=spectator,tag=!gun_dead] run tag @s add gun_dead
execute as @a[tag=Blue,gamemode=spectator,tag=!gun_dead] run tag @s add gun_dead

execute if score #mode mode_respawns matches 1 as @a[tag=Red,gamemode=spectator,tag=gun_dead,scores={tdm_respawn_timer=0}] run scoreboard players add #Blue tdm_blue_kills 1
execute if score #mode mode_respawns matches 1 as @a[tag=Blue,gamemode=spectator,tag=gun_dead,scores={tdm_respawn_timer=0}] run scoreboard players add #Red tdm_red_kills 1
execute if score #mode mode_respawns matches 1 as @a[tag=gun_dead,gamemode=spectator,scores={tdm_respawn_timer=0}] run scoreboard players set @s tdm_respawn_timer 100

execute as @a[tag=gun_dead,gamemode=!spectator] run tag @s remove gun_dead
scoreboard players set @a[gamemode=!spectator] tdm_respawn_timer 0
