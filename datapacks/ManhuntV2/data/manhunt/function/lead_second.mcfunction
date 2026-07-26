scoreboard players remove Starts: manhunt_display 1

effect give @a[team=hunters] minecraft:slowness 20 255
effect give @a[team=hunters] minecraft:blindness 20 255
effect give @a[team=hunters] minecraft:mining_fatigue 20 255
effect give @a[team=hunters] minecraft:weakness 20 255
execute as @a[team=hunters] run attribute @s minecraft:jump_strength base set 0

execute if score Starts: manhunt_display matches ..0 run function manhunt:start_hunt

