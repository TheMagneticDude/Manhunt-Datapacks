execute if score Temp manhunt_enabled matches 1.. as @a[scores={manhunt_deaths=1..},team=runners] run function manhunt:runners_death
scoreboard players set @a manhunt_deaths 0

scoreboard players add Temp manhunt_ticks 1
execute if score Temp manhunt_ticks matches 20.. run function manhunt:second

execute if score Temp manhunt_enabled matches 1.. as @e[type=item] if data entity @s Item.components."minecraft:custom_data.Manhunt_tracker" run kill @s

execute if score Starts: manhunt_display matches 1.. run clear @a[team=hunters]

#check triggers
function manhunt:check_trigger


#player tag
tag @a[team=runners,tag=!ManhuntPlayer] add ManhuntPlayer
tag @a[team=hunters,tag=!ManhuntPlayer] add ManhuntPlayer
tag @a[team=dead,tag=!ManhuntPlayer] add ManhuntPlayer

#remove tag from players that arent on the teams
execute as @a run execute unless entity @a[team=runners] run execute unless entity @a[team=hunters] run execute unless entity @a[team=dead] run tag @s remove ManhuntPlayer

#set dead runners to spectator even upon rejoin
gamemode spectator @a[team=dead,gamemode=!spectator]

#lead timer value 
#read scoreboard lead value and store into macro
#execute store result storage manhunt:vars LeadTime int 1 run scoreboard players get Temp manhunt_lead

#force survival even on rejoin
execute as @a[team=runners,tag=!Operator] at @s if dimension minecraft:manhunt run gamemode survival @s
execute as @a[team=hunters,tag=!Operator] at @s if dimension minecraft:manhunt run gamemode survival @s

execute as @a[team=runners,tag=!Operator] at @s if dimension minecraft:manhunt_nether run gamemode survival @s
execute as @a[team=hunters,tag=!Operator] at @s if dimension minecraft:manhunt_nether run gamemode survival @s

execute as @a[team=runners,tag=!Operator] at @s if dimension minecraft:manhunt_the_end run gamemode survival @s
execute as @a[team=hunters,tag=!Operator] at @s if dimension minecraft:manhunt_the_end run gamemode survival @s