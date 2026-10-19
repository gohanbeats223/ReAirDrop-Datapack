# announcing coordinates procedure
# auto command input
#
# DON'T TOUCH ANYTHING IN HERE except text in lines 21 to 25 to customize message

# Executable that is storing coordinates of armorstand, no touchy - if touchy - code fucky upy
execute as @e[type=armor_stand,tag=airdrop,limit=1] store result score @s airdrop_x run data get entity @s Pos[0] 1
execute as @e[type=armor_stand,tag=airdrop,limit=1] store result score @s airdrop_y run data get entity @s Pos[1] 1
execute as @e[type=armor_stand,tag=airdrop,limit=1] store result score @s airdrop_z run data get entity @s Pos[2] 1

# drop that shit down at certain armorstands
execute as @e[type=armor_stand,tag=airdrop,limit=1] at @s run airdrop ~ ~ ~ ADVANCED NORMAL
execute as @e[type=armor_stand,tag=airdrop2,limit=1] at @s run airdrop ~ ~ ~ ADVANCED MEDIC

# Play sound announcing airdrop landed *ding* if no sound and no message no airdrop lol

execute as @e[type=armor_stand,tag=airdrop,limit=1] at @a run playsound minecraft:block.note_block.iron_xylophone master @a

# Announce the coordinates in chat | You can customize that shit if you want

execute as @e[type=armor_stand,tag=airdrop,limit=1] run tellraw @a {"text":" "}
execute as @e[type=armor_stand,tag=airdrop,limit=1] run tellraw @a [    {"text":"Airdrop has landed on location: ","color":"yellow"},    {"text":"X: ","color":"gold"},    {"score":{"name":"@s","objective":"airdrop_x"}},    {"text":" Y: ","color":"gold"},    {"score":{"name":"@s","objective":"airdrop_y"}},    {"text":" Z: ","color":"gold"},    {"score":{"name":"@s","objective":"airdrop_z"}}]
execute as @e[type=armor_stand,tag=airdrop,limit=1] run tellraw @a {"text":" "}
execute as @e[type=armor_stand,tag=airdrop,limit=1] run tellraw @a {"text":"Warning! Airdrop is visible to all players!","bold":true,"underlined":true,"color":"red"}
execute as @e[type=armor_stand,tag=airdrop,limit=1] run tellraw @a {"text":" "}


