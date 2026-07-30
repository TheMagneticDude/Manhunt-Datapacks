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


gamemode survival @a[team=runners]
gamemode survival @a[team=hunters]


function manhunt:player_reset

#make sure runner is facing 0 0 
execute at @a[team=runners] run tp @a[team=runners] ~ ~ ~ 0 0
#make sure hunters dont push runner 
execute at @a[team=runners,limit=1] run tp @a[team=hunters] ^ ^5 ^5 facing entity @a[team=runners,limit=1]
#make sure runners dont push each other
team modify runners collisionRule never

#reset walk scores
scoreboard players set @a[scores={walk=1..}] walk 0
scoreboard players set @a[scores={sprint=1..}] sprint 0
scoreboard players set @a[scores={crouch=1..}] crouch 0
#give runners 20 seconds of slowness on game start
effect give @a[team=runners] minecraft:slowness 10 255 true
#prevent runner from dying before game starts
effect give @a[team=runners] minecraft:resistance infinite 255 true


scoreboard players set Temp manhunt_enabled 3
scoreboard players set Temp manhunt_end 10