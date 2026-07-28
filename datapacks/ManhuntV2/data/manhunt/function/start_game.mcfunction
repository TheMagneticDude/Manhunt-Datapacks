#run normal start 
execute if score GameStart manhunt_runner_move_start matches 0 run execute run function manhunt:start_gane
#run movement check game
execute if score GameStart manhunt_runner_move_start matches 1 run execute run function manhunt:start_movement_check_game

