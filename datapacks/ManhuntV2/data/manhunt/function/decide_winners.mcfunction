execute if entity @e[team=runners,tag=!manhunt_died,tag=!manhunt_fake_runner] run tellraw @a {"text":"The runners have won!","bold":true,"color":"red"}
execute if entity @e[team=runners,tag=!manhunt_died,tag=!manhunt_fake_runner] run title @a title {"text":"The runners have won!","bold":true,"color":"red"}
execute if entity @e[team=runners,tag=!manhunt_died,tag=!manhunt_fake_runner] run scoreboard players add @a[team=runners] victories 1

execute unless entity @e[team=runners,tag=!manhunt_died,tag=!manhunt_fake_runner] if entity @e[team=hunters] run tellraw @a {"text":"The hunters have won!","bold":true,"color":"blue"}
execute unless entity @e[team=runners,tag=!manhunt_died,tag=!manhunt_fake_runner] if entity @e[team=hunters] run title @a title {"text":"The hunters have won!","bold":true,"color":"blue"}

#execute unless entity @e[team=runners,tag=!manhunt_died,tag=!manhunt_fake_runner] if entity @e[team=hunters] run scoreboard players add @a[team=hunters] victories 1

function manhunt:game_over