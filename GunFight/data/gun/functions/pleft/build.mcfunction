scoreboard objectives add rcount dummy
scoreboard objectives add bcount dummy
scoreboard objectives add teams dummy "Players Left"
scoreboard objectives add mode_id dummy
scoreboard objectives add mode_respawns dummy
scoreboard objectives add map_id dummy
scoreboard objectives add tdm_red_kills dummy
scoreboard objectives add tdm_blue_kills dummy
scoreboard objectives add tdm_kill_target dummy "Kill Target"
scoreboard objectives add tdm_respawn_timer dummy
scoreboard objectives add tdm_kills dummy "TDM Kills"
scoreboard objectives add tdm_deaths_counted dummy
scoreboard objectives add gun_deaths deathCount
scoreboard objectives add gun_deaths_prev dummy
scoreboard players set #mode mode_id 0
scoreboard players set #mode mode_respawns 0
scoreboard players set #map map_id 0
scoreboard players set #target tdm_kill_target 50
scoreboard players set #Red tdm_red_kills 0
scoreboard players set #Blue tdm_blue_kills 0
scoreboard players set Red tdm_kills 0
scoreboard players set Blue tdm_kills 0