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

#clear resistance
effect clear @a[tag=ManhuntPlayer] minecraft:resistance
execute in minecraft:manhunt run time set day