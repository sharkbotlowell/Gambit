execute as @a unless data entity @s Inventory[{id:"minecraft:cooked_beef"}] run give @s[gamemode=!creative,gamemode=!spectator] minecraft:cooked_beef 16
schedule function gun:tick 20t