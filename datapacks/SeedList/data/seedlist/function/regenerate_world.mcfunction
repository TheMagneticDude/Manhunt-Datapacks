# 1. Count how many seeds are in the array
execute store result score #list_size mv_seeder_vars run data get storage mv_seeder:main seeds

# 2. Subtract 1 from the size to get the maximum array index (0-indexed)
scoreboard players remove #list_size mv_seeder_vars 1

# 3. Store that max index into storage so a macro can read it
execute store result storage mv_seeder:main limits.max int 1 run scoreboard players get #list_size mv_seeder_vars

# 4. Call a helper function to roll the random number using a macro
function seedlist:roll_random with storage mv_seeder:main limits

# 5. Create a temporary copy of the seeds array to manipulate
data modify storage mv_seeder:main temp_seeds set from storage mv_seeder:main seeds

# 6. Loop to drop elements from the front of the array until our random index becomes 0
function seedlist:pop_loop

# 7. Grab the first string from our remaining temp array and wrap it inside a compound object
data modify storage mv_seeder:main execution_payload.seed_text set from storage mv_seeder:main temp_seeds[0]

# 8. Run the macro by passing the compound object
function seedlist:execute_regen with storage mv_seeder:main execution_payload

