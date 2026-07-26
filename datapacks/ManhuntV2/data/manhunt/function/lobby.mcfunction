execute in minecraft:overworld run tp @s 9 -29 6 180 0

xp set @s 0 levels
xp set @s 0 points
effect give @s instant_health 1 100
effect give @s saturation 1 100
clear @s
advancement revoke @s everything

gamemode adventure @s

team leave @s


tellraw @s {"text":"Teleporting to the lobby...","color":"aqua"}
