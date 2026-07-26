scoreboard objectives setdisplay sidebar

#allow hunters to jump
execute as @a[team=hunters] run attribute @s minecraft:jump_strength base reset

#To show now tracking
scoreboard players reset @a manhunt_tid

scoreboard players set Starts: manhunt_display 0
scoreboard players set Temp manhunt_enabled 2