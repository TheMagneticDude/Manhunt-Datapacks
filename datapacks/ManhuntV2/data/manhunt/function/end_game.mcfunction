clear @a[tag=ManhuntPlayer] minecraft:compass[minecraft:custom_data={Manhunt_tracker:1b}]
title @a[tag=ManhuntPlayer] title {"text":"Game over","bold":true,"color":"gold"}

scoreboard players set Temp manhunt_enabled 0
scoreboard players set Starts: manhunt_display 0

execute in minecraft:overworld run tp @a[tag=ManhuntPlayer] 9.5 -28 6.6
execute in minecraft:overworld run spawnpoint @a[tag=ManhuntPlayer] 9 -28 6

gamemode adventure @a[tag=ManhuntPlayer]

function manhunt:player_reset
team leave @a[tag=ManhuntPlayer]
scoreboard objectives setdisplay sidebar victories



#disable stargate
function stargate:a/default/play_anim
function stargate:_/default/stop_anim