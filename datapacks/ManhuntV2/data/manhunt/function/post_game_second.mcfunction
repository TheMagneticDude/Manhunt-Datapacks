

#countdown timer remove one every second
scoreboard players remove Ends: manhunt_display 1

#end game once timer has run to 0
execute if score Ends: manhunt_display matches ..0 run function manhunt:end_game