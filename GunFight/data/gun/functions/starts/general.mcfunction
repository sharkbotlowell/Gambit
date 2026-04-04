effect clear @a[gamemode=!creative,gamemode=!spectator]
clear @a[gamemode=!creative,gamemode=!spectator]
function gun:armor
function gun:kits/equip
function gun:countdown/start
team join red @a[tag=Red]
team join blue @a[tag=Blue]
schedule clear gun:selectors/loop