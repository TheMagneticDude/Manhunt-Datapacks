scoreboard players remove Starts: manhunt_display 1

execute as @a[team=hunters] run attribute @s minecraft:movement_speed base set 0
effect give @a[team=hunters] minecraft:blindness 5 255
execute as @a[team=hunters] run attribute @s minecraft:block_break_speed base set 0
effect give @a[team=hunters] minecraft:weakness 5 255
execute as @a[team=hunters] run attribute @s minecraft:jump_strength base set 0
effect give @a[team=hunters] minecraft:resistance 5 255
execute as @a[team=hunters] run attribute @s minecraft:knockback_resistance base set 1000000000

execute if score Starts: manhunt_display matches ..0 run function manhunt:start_hunt

