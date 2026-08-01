clear @a[tag=ManhuntPlayer] minecraft:compass[minecraft:custom_data={Manhunt_tracker:1b}]
title @a[tag=ManhuntPlayer] title {"text":"Game over","bold":true,"color":"gold"}

#16 bit integer limit for representing the limbo state right after game over and before people get teleported
scoreboard players set Temp manhunt_enabled 32767


scoreboard objectives setdisplay sidebar manhunt_display
#set end time 
scoreboard players operation Ends: manhunt_display = Temp manhunt_lead

tellraw @a[tag=ManhuntPlayer] {"text":"Game ends when timer expires!","bold":true,"color":"red"}

#set everyone to spectator
execute as @a[tag=ManhuntPlayer] run team join dead
