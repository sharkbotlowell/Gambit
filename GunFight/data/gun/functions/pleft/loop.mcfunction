function gun:pleft/bluecount
function gun:pleft/redcount
execute if score #mode mode_respawns matches 1 run function gun:tdm/win_check
execute unless score #mode mode_respawns matches 1 if score #Blue bcount matches 0 unless score #Red rcount matches 0 run function gun:pleft/rwin
execute unless score #mode mode_respawns matches 1 if score #Red rcount matches 0 unless score #Blue bcount matches 0 run function gun:pleft/bwin
scoreboard players add #ui pleft_ui_timer 1
execute if score #ui pleft_ui_timer matches 10.. run function gun:pleft/actionbar_status
execute if score #ui pleft_ui_timer matches 10.. run scoreboard players set #ui pleft_ui_timer 0
schedule function gun:pleft/loop 20t