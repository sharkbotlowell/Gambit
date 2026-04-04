tellraw @a ["[Lowell] Blue reached ",{"score":{"name":"#target","objective":"tdm_kill_target"}}," kills"]
title @a times 1s 3s 1s
title @a title ["",{"text":"Blue","bold":true,"color":"aqua"},{"text":" Wins"}]
function gun:pleft/close
schedule function gun:gameend 5s
