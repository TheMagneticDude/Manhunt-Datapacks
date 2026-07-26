scoreboard players remove Starts: manhunt_display 1

effect give @a[team=hunters] minecraft:slowness 20 255
effect give @a[team=hunters] minecraft:blindness 20 255
effect give @a[team=hunters] minecraft:mining_fatigue 20 255
effect give @a[team=hunters] minecraft:weakness 20 255
effect give @a[team=hunters] minecraft:jump_boost 20 255

execute if score Starts: manhunt_display matches ..0 run function manhunt:start_hunt

