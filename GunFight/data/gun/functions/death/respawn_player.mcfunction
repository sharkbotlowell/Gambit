clear @s
gamemode adventure @s
function gun:death/loadout_self

function gun:death/tpmap

title @s actionbar {"text":""}
effect give @s minecraft:blindness 1 0 true
execute at @s run playsound minecraft:block.respawn_anchor.set_spawn master @s ~ ~ ~ 0.9 1.0

scoreboard players set @s tdm_respawn_timer 0
tag @s remove gun_dead
