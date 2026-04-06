function shark:ugly/ugly
tp @a[tag=Red] -7.84 0.00 0.52 -1529.49 1.46
tp @a[tag=Blue] 6.74 0.00 0.54 -1349.64 2.36
gamerule doImmediateRespawn false
execute at @a[gamemode=spectator] as @a[gamemode=spectator] run gamemode adventure
tag @a remove gun_dead
tag @a remove gun_just_died
tag @a remove gun_spec_tp_pending
scoreboard players set @a spec_respawn_timer 0
execute as @a[tag=Red] run clear @s
execute as @a[tag=Blue] run clear @s
tellraw @a "[Lowell] Game Ending"
tag @a remove Blue
tag @a remove Red
effect give @a regeneration 60 4 true
effect give @a saturation 1800 0 true
team join lobby @a[team=red]
team join lobby @a[team=blue]
schedule clear gun:tdm/spawnpoints
schedule function gun:selectors/loop 1t
schedule function gun:pleft/close 1t