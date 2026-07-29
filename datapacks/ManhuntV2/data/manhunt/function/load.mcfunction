scoreboard objectives add reg_1 dummy

scoreboard objectives add manhunt_p_left dummy

scoreboard objectives add manhunt_rid dummy
scoreboard objectives add manhunt_tid dummy

scoreboard objectives add manhunt_ticks dummy
scoreboard objectives add manhunt_enabled dummy
scoreboard objectives add manhunt_end dummy

scoreboard objectives add manhunt_display dummy
scoreboard objectives modify manhunt_display displayname ""

scoreboard objectives add manhunt_deaths deathCount
scoreboard objectives add manhunt_lead dummy

scoreboard objectives add manhunt_x dummy
scoreboard objectives add manhunt_y dummy
scoreboard objectives add manhunt_z dummy

scoreboard objectives add manhunt_x_o dummy
scoreboard objectives add manhunt_y_o dummy
scoreboard objectives add manhunt_z_o dummy

scoreboard objectives add manhunt_x_n dummy
scoreboard objectives add manhunt_y_n dummy
scoreboard objectives add manhunt_z_n dummy

scoreboard objectives add manhunt_x_e dummy
scoreboard objectives add manhunt_y_e dummy
scoreboard objectives add manhunt_z_e dummy

scoreboard objectives add manhunt_dst dummy
scoreboard objectives add manhunt_min_dst dummy

scoreboard objectives add manhunt_infection_mode dummy
scoreboard objectives add manhunt_runner_move_start dummy
scoreboard objectives add manhunt_game_preview dummy


execute unless score Temp manhunt_lead matches -2147483647.. run scoreboard players set Temp manhunt_lead 45

team add hunters "hunters"
team add runners "runners"
team add dead "dead"

scoreboard objectives add manhunt_prev dummy
execute unless score Temp manhunt_prev matches -2147483647.. run function manhunt:first_load

scoreboard objectives add lobby trigger

scoreboard objectives add tracker_count dummy

#movement check scoreboard
scoreboard objectives add walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add sprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add crouch minecraft.custom:minecraft.crouch_one_cm



tellraw @a {"text":"Buckeye Manhunt 26.2 Loaded","bold":true,"color":"gold"}