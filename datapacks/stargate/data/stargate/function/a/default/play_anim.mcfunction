# stargate created via BDEngine

execute as @e[tag=stargate_root,type=block_display] at @s run tag @s remove animation_pause
execute as @e[tag=stargate_root,type=block_display] at @s run tag @s remove animation_loop
execute as @e[tag=stargate_root,type=block_display] at @s run data modify entity @e[type=minecraft:block_display,tag=stargate_camera,limit=1,sort=nearest] teleport_duration set value 0
schedule function stargate:k/default/start 0.1s
