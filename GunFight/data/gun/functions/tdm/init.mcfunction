scoreboard players set #mode mode_id 1
scoreboard players set #mode mode_respawns 1
scoreboard players set #Red tdm_red_kills 0
scoreboard players set #Blue tdm_blue_kills 0
scoreboard players set Red tdm_kills 0
scoreboard players set Blue tdm_kills 0
execute unless score #target tdm_kill_target matches 1.. run scoreboard players set #target tdm_kill_target 50
scoreboard players set @a tdm_respawn_timer 0
tag @a remove gun_dead
