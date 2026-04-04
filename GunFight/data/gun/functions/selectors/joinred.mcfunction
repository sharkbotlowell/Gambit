tag @s add Red
say I Joined the Red Team!
tag @s remove Blue

execute as @a[tag=!Red] at @s if block ~ ~-1 ~ minecraft:stripped_mangrove_log if block ~ ~-2 ~ minecraft:stripped_mangrove_wood run function gun:selectors/joinred

# Stored Here as Currently Unused, if wanted to use in the future also will need to mess with teams and add this back to the loop function
# - Lowell