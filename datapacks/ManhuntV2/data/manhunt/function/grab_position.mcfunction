execute as @e[team=runners] at @s if predicate manhunt:in_overworld store result score @s manhunt_x_o run data get entity @s Pos[0]
execute as @e[team=runners] at @s if predicate manhunt:in_overworld store result score @s manhunt_y_o run data get entity @s Pos[1]
execute as @e[team=runners] at @s if predicate manhunt:in_overworld store result score @s manhunt_z_o run data get entity @s Pos[2]

execute as @e[team=runners] at @s if predicate manhunt:in_nether store result score @s manhunt_x_n run data get entity @s Pos[0]
execute as @e[team=runners] at @s if predicate manhunt:in_nether store result score @s manhunt_y_n run data get entity @s Pos[1]
execute as @e[team=runners] at @s if predicate manhunt:in_nether store result score @s manhunt_z_n run data get entity @s Pos[2]

execute as @e[team=runners] at @s if predicate manhunt:in_end store result score @s manhunt_x_e run data get entity @s Pos[0]
execute as @e[team=runners] at @s if predicate manhunt:in_end store result score @s manhunt_y_e run data get entity @s Pos[1]
execute as @e[team=runners] at @s if predicate manhunt:in_end store result score @s manhunt_z_e run data get entity @s Pos[2]