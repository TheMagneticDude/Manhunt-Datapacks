# 1. Find out how many seeds are in the list and store the count in a scoreboard
execute store result score #list_size mv_seeder_vars run data get storage mv_seeder:main seeds

# 2. Generate a random index between 0 and (list_size - 1)
# (Requires Minecraft 1.20.2+ for the native 'random' command)
execute store result score #random_idx mv_seeder_vars run random value 0..#list_size

# 3. Copy the seed at that random index into a temporary storage object
execute rolled-back run data modify storage mv_seeder:main current_seed set from storage mv_seeder:main seeds[0]

# Overwrite index 0 in the getter if our random index is higher
# (Workaround to dynamically grab a storage index using scoreboards)
execute if score #random_idx mv_seeder_vars matches 1 run data modify storage mv_seeder:main current_seed set from storage mv_seeder:main seeds[1]
execute if score #random_idx mv_seeder_vars matches 2 run data modify storage mv_seeder:main current_seed set from storage mv_seeder:main seeds[2]
# Note: Repeat this line for as many seeds as you have in your list

# 4. Pass the selected seed into the macro function
function mv_seeder:execute_regen with storage mv_seeder:main current_seed
