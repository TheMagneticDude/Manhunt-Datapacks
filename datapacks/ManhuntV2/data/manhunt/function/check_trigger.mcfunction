# Constantly enable the command for all non-op players
scoreboard players enable @a lobby

# If anyone used it, run the teleport function
execute as @a[scores={lobby=1..}] run function manhunt:lobby

# Instantly clear their score so they can use it again
scoreboard players set @a[scores={lobby=1..}] lobby 0
