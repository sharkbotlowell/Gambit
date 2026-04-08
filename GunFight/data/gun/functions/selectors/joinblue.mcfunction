tag @s remove Red
tag @s add Blue
say I joined the Blue Team!

execute as @a[tag=!Blue,tag=!gun_optout] at @s if block ~ ~-1 ~ minecraft:stripped_warped_stem if block ~ ~-2 ~ minecraft:stripped_warped_hyphae run function gun:selectors/joinblue

# Stored Here as Currently Unused, if wanted to use in the future also will need to mess with teams and add this back to the loop function
# - Lowell