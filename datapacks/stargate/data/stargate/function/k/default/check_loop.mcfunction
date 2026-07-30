# stargate created via BDEngine

execute as @e[tag=stargate_root,type=block_display] if entity @s[tag=animation_loop] at @s run function stargate:k/default/keyframe_0
execute as @e[tag=stargate_root,type=block_display] unless entity @s[tag=animation_loop] at @s run function stargate:_/stop_anim