clear @a[tag=ManhuntPlayer] minecraft:compass[minecraft:custom_data={Manhunt_tracker:1b}]
title @a[tag=ManhuntPlayer] title {"text":"Game over","bold":true,"color":"gold"}

#16 bit integer limit for representing the limbo state right after game over and before people get teleported
scoreboard players set Temp manhunt_enabled 32767


scoreboard objectives setdisplay sidebar manhunt_display



#set end time 
scoreboard players operation Ends: manhunt_display = Temp manhunt_post_game_timer

#hide Starts timer 
scoreboard players reset Starts: manhunt_display

effect clear @a[tag=ManhuntPlayer]
attribute @a[tag=ManhuntPlayer] minecraft:jump_strength base reset
attribute @a[tag=ManhuntPlayer] minecraft:movement_speed base reset
attribute @a[tag=ManhuntPlayer] minecraft:block_break_speed base reset
attribute @a[tag=ManhuntPlayer] minecraft:knockback_resistance base reset

tellraw @a[tag=ManhuntPlayer] {"text":"Game ends when timer expires!","bold":true,"color":"red"}
tellraw @a[tag=ManhuntPlayer] {"text":"To return to lobby early run: /trigger lobby","bold":true,"color":"gold"}


#set everyone to spectator
execute as @a[tag=ManhuntPlayer] run team join dead
