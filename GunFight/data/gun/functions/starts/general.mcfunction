effect clear @a[gamemode=!creative,gamemode=!spectator]
clear @a[gamemode=!creative,gamemode=!spectator]
tag @a remove gun_dead
scoreboard players set @a tdm_respawn_timer 0
function gun:armor
function gun:kits/equip
function gun:countdown/start
team join red @a[tag=Red]
team join blue @a[tag=Blue]
schedule clear gun:selectors/loop
schedule function gun:death/loop 1t


effect clear @a[gamemode=!creative,gamemode=!spectator]
clear @a[gamemode=!creative,gamemode=!spectator]
function shark:ugly/armor
function gun:kits/equip
function gun:countdown/start
team join red @a[tag=Red]
team join blue @a[tag=Blue]
schedule clear gun:selectors/loop