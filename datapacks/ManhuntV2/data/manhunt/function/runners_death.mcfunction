scoreboard players remove Temp manhunt_p_left 1



team join dead
gamemode spectator @s
tag @s add manhunt_died

#infection mode
#set dead players to hunters
execute if score Infection manhunt_infection_mode matches 1 run execute as @a[tag=manhunt_died] run team join hunters
execute if score Infection manhunt_infection_mode matches 1 run execute as @a[tag=manhunt_died] run gamemode survival @s
execute if score Infection manhunt_infection_mode matches 1 run execute as @a[tag=manhunt_died] run title @s title {"text":"You have been Infected!","bold":true,"color":"red"}
execute if score Infection manhunt_infection_mode matches 1 run execute as @a[tag=manhunt_died] run tellraw @s {"text":"You have been Infected!  You are now a hunter!","bold":true,"color":"red"}
execute if score Infection manhunt_infection_mode matches 1 run execute as @a[tag=manhunt_died] run tag @s remove manhunt_died