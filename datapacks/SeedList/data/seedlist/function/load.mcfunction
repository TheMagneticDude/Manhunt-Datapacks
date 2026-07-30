/scoreboard objectives add mv_seeder_vars dummy

#Initialize storage array containing custom seeds

data modify storage mv_seeder:main seeds set value ["1234567890", "-987654321", "42424242", "7777777"]

say seedlist loaded