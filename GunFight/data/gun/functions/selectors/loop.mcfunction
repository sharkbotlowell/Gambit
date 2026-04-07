# Kit Selectors

execute as @a[tag=!medic] at @s if block ~ ~-1 ~ pink_stained_glass if block ~ ~-2 ~ pearlescent_froglight if block ~ ~-3 ~ target run function gun:selectors/medic
execute as @a[tag=!snipe] at @s if block ~ ~-1 ~ green_stained_glass if block ~ ~-2 ~ verdant_froglight if block ~ ~-3 ~ target run function gun:selectors/snipe
execute as @a[tag=!fal] at @s if block ~ ~-1 ~ orange_stained_glass if block ~ ~-2 ~ ochre_froglight if block ~ ~-3 ~ target run function gun:selectors/fal
execute as @a[tag=!smg] at @s if block ~ ~-1 ~ blue_stained_glass if block ~ ~-2 ~ sea_lantern if block ~ ~-3 ~ target run function gun:selectors/smg
execute as @a[tag=!rpk] at @s if block ~ ~-1 ~ red_stained_glass if block ~ ~-2 ~ shroomlight if block ~ ~-3 ~ target run function gun:selectors/rpk
execute as @a[tag=!marksman] at @s if block ~ ~-1 ~ blue_stained_glass if block ~ ~-2 ~ sea_lantern if block ~ ~-3 ~ dried_kelp_block run function gun:selectors/marksman
execute as @a[tag=!breacher] at @s if block ~ ~-1 ~ orange_stained_glass if block ~ ~-2 ~ honeycomb_block if block ~ ~-3 ~ dried_kelp_block run function gun:selectors/breacher
execute as @a[tag=!smg2] at @s if block ~ ~-1 ~ light_blue_stained_glass if block ~ ~-2 ~ prismarine if block ~ ~-3 ~ dried_kelp_block run function gun:selectors/smg2
execute as @a[tag=!assault] at @s if block ~ ~-1 ~ red_stained_glass if block ~ ~-2 ~ shroomlight if block ~ ~-3 ~ dried_kelp_block run function gun:selectors/assault
execute as @a[tag=!sniper] at @s if block ~ ~-1 ~ purple_stained_glass if block ~ ~-2 ~ pearlescent_froglight if block ~ ~-3 ~ dried_kelp_block run function gun:selectors/sniper
execute as @a[tag=!ranger] at @s if block ~ ~-1 ~ lime_stained_glass if block ~ ~-2 ~ verdant_froglight if block ~ ~-3 ~ dried_kelp_block run function gun:selectors/ranger
execute as @a[tag=!burst] at @s if block ~ ~-1 ~ yellow_stained_glass if block ~ ~-2 ~ glowstone if block ~ ~-3 ~ dried_kelp_block run function gun:selectors/burst

# Next Map Lobby Display
execute if score #nextmap nextmap_id matches 1 unless score #nextmode nextmap_mode matches 1 as @a[tag=!gun_optout,gamemode=!creative,gamemode=!spectator] run title @s actionbar [{"text":"Next Map: ","color":"gold"},{"text":"Elimination","color":"green"},{"text":" \u2014 Forest","color":"white"}]
execute if score #nextmap nextmap_id matches 1 if score #nextmode nextmap_mode matches 1 as @a[tag=!gun_optout,gamemode=!creative,gamemode=!spectator] run title @s actionbar [{"text":"Next Map: ","color":"gold"},{"text":"TDM","color":"aqua"},{"text":" \u2014 Forest","color":"white"}]
execute if score #nextmap nextmap_id matches 2 as @a[tag=!gun_optout,gamemode=!creative,gamemode=!spectator] run title @s actionbar [{"text":"Next Map: ","color":"gold"},{"text":"Elimination","color":"green"},{"text":" \u2014 Forest 2","color":"white"}]
execute if score #nextmap nextmap_id matches 3 as @a[tag=!gun_optout,gamemode=!creative,gamemode=!spectator] run title @s actionbar [{"text":"Next Map: ","color":"gold"},{"text":"Elimination","color":"green"},{"text":" \u2014 Trenches","color":"white"}]

# Team Selectors

execute as @a[tag=gun_optout] run title @s actionbar [{"text":"Spectate Mode","color":"yellow","bold":true},{"text":" - use ","color":"gray"},{"text":"/play","color":"green"},{"text":" to queue","color":"gray"}]

# Join Lobby when leaving Sumo
execute as @a at @s if block ~ ~-1 ~ minecraft:diorite_stairs if block ~ ~-2 ~ minecraft:polished_diorite if block ~ ~-3 ~ minecraft:smooth_quartz unless entity @s[team=lobby] run team join lobby @s
execute if entity @a[x=26,y=-6,z=-6,dx=12,dy=13,dz=12,team=lobby] as @a[x=26,y=-6,z=-6,dx=12,dy=13,dz=12] unless entity @s[team=sumo] run team join sumo @s

effect give @a[team=lobby] saturation 16 1 true
execute as @a[team=lobby,gamemode=!creative] unless data entity @s Inventory[{id:"minecraft:written_book",tag:{title:"Gambit Field Manual"}}] run function gun:lobby/give_guide
effect give @a[team=sumo] saturation 16 1 true
effect give @a[team=sumo] regeneration 5 25 true

schedule function gun:selectors/loop 1t