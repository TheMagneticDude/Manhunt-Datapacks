#start game that starts on runners movement

scoreboard players reset @a manhunt_x_o
scoreboard players reset @a manhunt_y_o
scoreboard players reset @a manhunt_z_o

scoreboard players reset @a manhunt_x_n
scoreboard players reset @a manhunt_y_n
scoreboard players reset @a manhunt_z_n


tag @e remove manhunt_died
tag @e remove manhunt_previous

tag @e remove manhunt_true_runner
tag @e remove manhunt_fake_runner
execute as @e[team=runners] run tag @s add manhunt_true_runner

scoreboard players set Temp manhunt_p_left 0
execute as @a[team=runners] run scoreboard players add Temp manhunt_p_left 1

scoreboard players set Temp manhunt_enabled 3
scoreboard players set Temp manhunt_end 10

gamemode survival @a[team=runners]
gamemode survival @a[team=hunters]


function manhunt:player_reset




