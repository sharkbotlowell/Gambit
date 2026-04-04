schedule function shark:teamrandom 1t
schedule function shark:teamrandom 2t
schedule function shark:teamrandom 3t
schedule function shark:teamrandom 4t
schedule function shark:teamrandom 5t
schedule function shark:teamrandom 6t
schedule function shark:teamrandom 7t
schedule function shark:teamrandom 8t
schedule function shark:teamrandom 9t
schedule function shark:teamrandom 10t
schedule function shark:teamrandom 11t
schedule function shark:teamrandom 12t
schedule function shark:teamrandom 13t
schedule function shark:teamrandom 14t
schedule function shark:teamrandom 15t
schedule function shark:teamrandom 16t
schedule function shark:teamrandom 17t
schedule function shark:teamrandom 18t
schedule function shark:teamrandom 19t
schedule function shark:teamrandom 20t
tellraw @a[tag=Blue] ["[Lowell]  You're on the ",{"text":"Blue Team!","color":"aqua"}]
tellraw @a[tag=Red] ["[Lowell]  You're on the ",{"text":"Red Team!","color":"dark_red"}]
team join red @a[tag=Red]
team join blue @a[tag=Blue]
function gun:pleft/build
scoreboard objectives setdisplay sidebar teams
schedule function gun:pleft/loop 20t