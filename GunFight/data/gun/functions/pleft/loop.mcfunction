function gun:pleft/bluecount
function gun:pleft/redcount
execute if score #Blue bcount matches 0 unless score #Red rcount matches 0 run function gun:pleft/rwin
execute if score #Red rcount matches 0 unless score #Blue bcount matches 0 run function gun:pleft/bwin
schedule function gun:pleft/loop 20t