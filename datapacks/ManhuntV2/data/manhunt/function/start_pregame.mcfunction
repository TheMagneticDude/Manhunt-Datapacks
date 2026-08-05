function manhunt:run_cmd {cmd: "execute as @a[team=runners] run mv tp @s manhunt"}
function manhunt:run_cmd {cmd: "execute as @a[team=hunters] run mv tp @s manhunt"}
gamemode spectator @a[tag=ManhuntPlayer]
scoreboard objectives setdisplay sidebar
function manhunt:player_reset


