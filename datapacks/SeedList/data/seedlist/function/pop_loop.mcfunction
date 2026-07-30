# If our target index is greater than 0, remove the first element and subtract 1 from the index
execute if score #random_idx mv_seeder_vars matches 1.. run data remove storage mv_seeder:main temp_seeds[0]
execute if score #random_idx mv_seeder_vars matches 1.. run scoreboard players remove #random_idx mv_seeder_vars 1

# Run again if we haven't reached index 0 yet
execute if score #random_idx mv_seeder_vars matches 1.. run function mv_seeder:pop_loop
