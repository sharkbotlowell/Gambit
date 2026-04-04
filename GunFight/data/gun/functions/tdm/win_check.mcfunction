scoreboard players operation Red tdm_kills = #Red tdm_red_kills
scoreboard players operation Blue tdm_kills = #Blue tdm_blue_kills
execute if score #Red tdm_red_kills >= #target tdm_kill_target if score #Blue tdm_blue_kills >= #target tdm_kill_target if score #Red tdm_red_kills = #Blue tdm_blue_kills run function gun:tdm/tie
execute if score #Red tdm_red_kills >= #target tdm_kill_target if score #Blue tdm_blue_kills >= #target tdm_kill_target if score #Red tdm_red_kills > #Blue tdm_blue_kills run function gun:tdm/rwin
execute if score #Red tdm_red_kills >= #target tdm_kill_target if score #Blue tdm_blue_kills >= #target tdm_kill_target if score #Blue tdm_blue_kills > #Red tdm_red_kills run function gun:tdm/bwin
execute if score #Red tdm_red_kills >= #target tdm_kill_target unless score #Blue tdm_blue_kills >= #target tdm_kill_target run function gun:tdm/rwin
execute if score #Blue tdm_blue_kills >= #target tdm_kill_target unless score #Red tdm_red_kills >= #target tdm_kill_target run function gun:tdm/bwin
