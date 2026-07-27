clear @s minecraft:compass[minecraft:custom_data={Manhunt_tracker:1b}]
tellraw @s[tag=!manhunt_not_in_end] {"text":"Looks like the runner hasn't been in the End yet...","color":"gold"}
tag @s add manhunt_not_in_end