execute if score #mode mode_respawns matches 1 as @a[tag=gun_dead,gamemode=!creative,scores={tdm_respawn_timer=1..}] run scoreboard players remove @s tdm_respawn_timer 1
execute if score #mode mode_respawns matches 1 as @a[tag=gun_dead,gamemode=!creative,scores={tdm_respawn_timer=..0}] run function gun:death/respawn_player
