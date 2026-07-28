scoreboard players remove Starts: manhunt_display 1


execute as @a[team=hunters] run attribute @s minecraft:movement_speed base set 0
execute as @a[team=hunters] run attribute @s minecraft:block_break_speed base set 0
effect give @a[team=hunters] minecraft:weakness infinite 255
execute as @a[team=hunters] run attribute @s minecraft:jump_strength base set 0
effect give @a[team=hunters] minecraft:resistance infinite 255
execute as @a[team=hunters] run attribute @s minecraft:knockback_resistance base set 1000000000


#start only when runner has moved 
execute as @a[scores={walk=1..},team=runners] run say I HAVE MOVED
execute as @a[scores={walk=1..},team=runners] run function manhunt:start_hunt
scoreboard players set @a[scores={walk=1..}] walk 0

