tellraw @a "[Lowell] Red has 0 Players Remaining"
title @a times 1s 3s 1s
title @a title ["",{"text":"Blue","bold":true,"color":"aqua"},{"text":" Wins"}]
function gun:pleft/close
schedule function gun:gameend 5s