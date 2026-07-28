scoreboard objectives setdisplay sidebar

#allow hunters to jump
execute as @a[team=hunters] run attribute @s minecraft:jump_strength base reset
execute as @a[team=hunters] run attribute @s minecraft:movement_speed base reset
execute as @a[team=hunters] run attribute @s minecraft:block_break_speed base reset
execute as @a[team=hunters] run attribute @s minecraft:knockback_resistance base reset

#To show now tracking
scoreboard players reset @a manhunt_tid

scoreboard players set Starts: manhunt_display 0
scoreboard players set Temp manhunt_enabled 2

#clear effects
effect clear @a[tag=ManhuntPlayer]
execute in minecraft:manhunt run time set day

#allow runners to collide with each other again
team modify runners collisionRule always

execute if score GameStart manhunt_runner_move_start matches 0 run title @a[tag=ManhuntPlayer] title {"text":"Hunt has started!","bold":true,"color":"gold"}
execute if score GameStart manhunt_runner_move_start matches 1 run title @a[tag=ManhuntPlayer] title {"text":"Runner has started!","bold":true,"color":"gold"}