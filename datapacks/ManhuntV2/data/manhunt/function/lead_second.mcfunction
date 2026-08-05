scoreboard players remove Starts: manhunt_display 1

execute as @a[team=hunters] at @s if dimension minecraft:manhunt run attribute @s minecraft:movement_speed base set 0
$execute as @a[team=hunters] at @s if dimension minecraft:manhunt run effect give @s minecraft:blindness $(LeadTime) 255
execute as @a[team=hunters] at @s if dimension minecraft:manhunt run attribute @s minecraft:block_break_speed base set 0
$execute as @a[team=hunters] at @s if dimension minecraft:manhunt run effect give @s minecraft:weakness $(LeadTime) 255
execute as @a[team=hunters] at @s if dimension minecraft:manhunt run attribute @s minecraft:jump_strength base set 0
$execute as @a[team=hunters] at @s if dimension minecraft:manhunt run effect give @s minecraft:resistance $(LeadTime) 255
execute as @a[team=hunters] at @s if dimension minecraft:manhunt run attribute @s minecraft:knockback_resistance base set 1000000000

#run death check if runner somehow dies during the lead 
execute if score Temp manhunt_p_left matches ..0 unless entity @e[team=runners,tag=!manhunt_died,tag=!manhunt_fake_runner] run function manhunt:decide_winners

execute if score Starts: manhunt_display matches ..0 run function manhunt:start_hunt

