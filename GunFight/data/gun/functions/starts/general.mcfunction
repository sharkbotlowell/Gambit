effect clear @a[gamemode=!creative,gamemode=!spectator]
clear @a[gamemode=!creative,gamemode=!spectator]
gamerule doImmediateRespawn true
tag @a remove gun_dead
tag @a remove gun_just_died
tag @a remove gun_spec_tp_pending
scoreboard players set @a tdm_respawn_timer 0
scoreboard players set @a spec_respawn_timer 0
execute as @a[gamemode=!creative] run scoreboard players operation @s gun_deaths_prev = @s gun_deaths
execute as @a[gamemode=!creative] run scoreboard players operation @s tdm_deaths_counted = @s gun_deaths
function gun:armor
function gun:kits/equip
execute as @a[gamemode=!creative,gamemode=!spectator] run function gun:rations/give_random_self
function gun:countdown/start
team join red @a[tag=Red]
team join blue @a[tag=Blue]
schedule clear gun:selectors/loop
schedule function gun:death/loop 1t


effect clear @a[gamemode=!creative,gamemode=!spectator]
clear @a[gamemode=!creative,gamemode=!spectator]
gamerule doImmediateRespawn true
function shark:ugly/armor
function gun:kits/equip
execute as @a[gamemode=!creative,gamemode=!spectator] run function gun:rations/give_random_self
function gun:countdown/start
team join red @a[tag=Red]
team join blue @a[tag=Blue]
schedule clear gun:selectors/loop