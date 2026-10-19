# repeating every hours procedure
#
# !!! Use commandblock for this function !!!
# auto command input
#
# DON'T TOUCH ANYTHING IN HERE except line 12 and 15 you replace only numbers here (72000) | Default time is 1 hour (72000 ticks)

# Increment the global timer by 1 every tick
scoreboard players add global airdrop_timer 1

# Check if the timer has reached x ticks and run very important function!!!!!!!!!!!111!!
execute if score global airdrop_timer matches 72000 run function airdrop:summon_airdrop

# Reset the timer after it reaches x ticks
execute if score global airdrop_timer matches 72000 run scoreboard players set global airdrop_timer 0
