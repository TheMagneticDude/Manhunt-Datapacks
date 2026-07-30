execute in minecraft:overworld run tp @s 9 -29 6 180 0

xp set @s 0 levels
xp set @s 0 points
effect give @s instant_health 1 100
effect give @s saturation 1 100
clear @s
advancement revoke @s everything

gamemode adventure @s

team leave @s

attribute @s minecraft:jump_strength base reset
attribute @s minecraft:movement_speed base reset
attribute @s minecraft:block_break_speed base reset
attribute @s minecraft:knockback_resistance base reset

effect give @s minecraft:resistance 1 255 true
effect give @s minecraft:regeneration 1 255 true
effect give @s minecraft:saturation 1 255 true
tellraw @s {"text":"Teleporting to the lobby...","color":"aqua"}
