# 1. Count how many seeds are in the array
execute store result score #list_size mv_seeder_vars run data get storage mv_seeder:main seeds

# 2. Pick a random index between 0 and (Size - 1)
# (Subtract 1 because arrays start indexing at 0)
scoreboard players data remove #list_size mv_seeder_vars 1
execute store result score #random_idx mv_seeder_vars run random value 0..#list_size

# 3. Create a temporary copy of the seeds array to manipulate
data modify storage mv_seeder:main temp_seeds set from storage mv_seeder:main seeds

# 4. Loop to drop elements from the front of the array until our random index becomes 0
function mv_seeder:pop_loop

# 5. The first item remaining in the temp array is now our chosen seed
data modify storage mv_seeder:main current_seed set from storage mv_seeder:main temp_seeds[0]

# 6. Run the macro
function mv_seeder:execute_regen with storage mv_seeder:main current_seed
