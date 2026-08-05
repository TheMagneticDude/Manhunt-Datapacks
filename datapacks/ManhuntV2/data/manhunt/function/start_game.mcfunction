#set manhunt world to day
execute in minecraft:manhunt run time set day

#teleport players to manhunt world
function manhunt:run_cmd {cmd: "execute as @a[team=runners] run mv tp @a manhunt"}
function manhunt:run_cmd {cmd: "execute as @a[team=hunters] run mv tp @a manhunt"}

#run normal start 
execute if score GameStart manhunt_runner_move_start matches 0 run execute run function manhunt:start_default_game
#run movement check game (DEPRECATED)
execute if score GameStart manhunt_runner_move_start matches 1 run execute run function manhunt:start_movement_check_game

#hide Ends timer
scoreboard players reset Ends: manhunt_display

#run stargate
function stargate:a/default/play_anim