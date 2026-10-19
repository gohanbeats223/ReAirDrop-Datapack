# setup procedure
# auto command input
#
# IF YOU WANT WORKING DATAPACK
# DON'T FUCKING TOUCH ANYTHING IN HERE
# idk if it's even worth commenting that shit

# meow
gamerule commandBlockOutput false
scoreboard objectives add airdrop_timer dummy "Airdrop Timer"
scoreboard objectives add airdrop_x dummy
scoreboard objectives add airdrop_y dummy
scoreboard objectives add airdrop_z dummy

# explain what to do and give 2 repeating commandblocks (+ add 3 more but someone need to read readme.txt)
tellraw @s ["",{"text":"|| Place 2 Repeating Commandblocks and place them somewhere on a map","italic":true,"color":"red"},{"text":"\n|| Set Conditions: Repeat / Unconditional / Always Active","color":"red"},{"text":"\n\n"},{"text":"Click on each text to copy to clipboard","color":"gold"},{"text":"\n\n"},{"text":"1 ","color":"green"},{"text":"function airdrop:repeat_every_hour","color":"green","clickEvent":{"action":"copy_to_clipboard","value":"function airdrop:repeat_every_hour"},"hoverEvent":{"action":"show_text","contents":"Click To Copy"}},{"text":"\n\n"},{"text":"2 ","color":"green"},{"text":"scoreboard players add global airdrop_timer 0","color":"green","clickEvent":{"action":"copy_to_clipboard","value":"scoreboard players add global airdrop_timer 0"},"hoverEvent":{"action":"show_text","contents":"Click To Copy"}},{"text":"\n\n"},{"text":"second commandblock is optional to check if it's working (check output in commandblock, if score rises - it's working)","underlined":true,"color":"red"},{"text":"\n\n "}]
give @s minecraft:repeating_command_block 2 