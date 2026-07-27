scoreboard players set Temp manhunt_enabled 0

clear @a minecraft:compass[minecraft:custom_data={Manhunt_tracker:1b}]

#need to find alternative to tick freeze
#set to spectator and force them to ride a marker at their old position

execute as @a[tag=ManhuntPlayer] run attribute @s minecraft:movement_speed base set 0
execute as @a[tag=ManhuntPlayer] run attribute @s minecraft:block_break_speed base set 0
execute as @a[tag=ManhuntPlayer] run attribute @s minecraft:jump_strength base set 0

#give resistance on pause
effect give @a[tag=ManhuntPlayer] minecraft:resistance infinite 255 true 