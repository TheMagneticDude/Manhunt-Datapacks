clear @a minecraft:compass[minecraft:custom_data={Manhunt_tracker:1b}]
title @a title {"text":"Game over","bold":true,"color":"gold"}

scoreboard players set Temp manhunt_enabled 0
scoreboard players set Starts: manhunt_display 0

execute in minecraft:overworld run tp @a 9.5 -28 6.6

gamemode adventure @a

function manhunt:player_reset
team leave @a
scoreboard objectives setdisplay sidebar victories