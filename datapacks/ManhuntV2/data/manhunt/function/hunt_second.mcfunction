execute as @e[team=runners] unless score @s manhunt_rid matches -2147483647.. run execute store result score @s manhunt_rid run data get entity @s UUID[0]

#Prevent a late joiner from having a compass
execute if score Starts: manhunt_display matches 1.. run clear @a[team=hunters] minecraft:compass

#Give runners compass
execute as @a[team=hunters] unless items entity @s inventory.* minecraft:compass[minecraft:custom_data={Manhunt_tracker:1b}] unless items entity @s hotbar.* minecraft:compass[minecraft:custom_data={Manhunt_tracker:1b}] unless items entity @s weapon.offhand minecraft:compass[minecraft:custom_data={Manhunt_tracker:1b}] unless items entity @s player.crafting.* minecraft:compass[minecraft:custom_data={Manhunt_tracker:1b}] unless items entity @s player.cursor minecraft:compass[minecraft:custom_data={Manhunt_tracker:1b}] run give @s minecraft:compass[minecraft:custom_data={Manhunt_tracker:1b}]

#check compass count
# 1. Count how many trackers the player has and store it in the scoreboard
execute as @a[team=hunters] store result score @s tracker_count run clear @s minecraft:compass[minecraft:custom_data={Manhunt_tracker:1b}] 0

# 2. If they have 2 or more, clear ALL trackers and give them exactly 1 back
execute as @a[team=hunters,scores={tracker_count=2..}] run clear @s minecraft:compass[minecraft:custom_data={Manhunt_tracker:1b}]
execute as @a[team=hunters,scores={tracker_count=2..}] run give @s minecraft:compass[minecraft:custom_data={Manhunt_tracker:1b}]

# 3. Kill all dropped compass items
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{Manhunt_tracker:1b}}}}]

function manhunt:grab_position

execute as @a[team=hunters] at @s if predicate manhunt:in_overworld run function manhunt:update_compass_overworld
execute as @a[team=hunters] at @s if predicate manhunt:in_nether run function manhunt:update_compass_nether
execute as @a[team=hunters] at @s if predicate manhunt:in_end run function manhunt:update_compass_end

#Game over detection (runners, only if no players left/none at all)
execute if score Temp manhunt_p_left matches ..0 unless entity @e[team=runners,tag=!manhunt_died,tag=!manhunt_fake_runner] run function manhunt:decide_winners

#Game over detection (hunters)
#execute unless entity @a[team=hunters] run function manhunt:decide_winners

#Game over detection (dragon death)
execute in minecraft:manhunt_the_end as @a[predicate=manhunt:in_end] if score Temp manhunt_end matches 1.. run scoreboard players remove Temp manhunt_end 1
execute if score Temp manhunt_end matches 0 unless entity @e[type=minecraft:ender_dragon] run function manhunt:dragon_death

#reset hunters attributes in case of disconnect
execute as @a[team=hunters] run attribute @s minecraft:jump_strength base reset
execute as @a[team=hunters] run attribute @s minecraft:movement_speed base reset
execute as @a[team=hunters] run attribute @s minecraft:block_break_speed base reset
execute as @a[team=hunters] run attribute @s minecraft:knockback_resistance base reset