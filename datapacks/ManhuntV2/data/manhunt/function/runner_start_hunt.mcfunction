scoreboard players remove Starts: manhunt_display 1


#start only when runner has moved 
execute as @a[scores={walk=1..},team=runners] run say I HAVE MOVED
execute as @a[scores={walk=1..},team=runners] run function manhunt:start_hunt
scoreboard players set @a[scores={walk=1..}] walk 0

