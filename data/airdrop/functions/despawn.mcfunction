# despawn procedure
# auto command input
#
# DON'T TOUCH ANYTHING IN HERE

# you're too slow if you can't fucking get airdrop in 10 minutes
execute as @e[type=armor_stand,tag=airdrop,limit=1] at @s run setblock ~ ~ ~ minecraft:air
execute as @e[type=armor_stand,tag=airdrop2,limit=1] at @s run setblock ~ ~ ~ minecraft:air
execute if entity @e[type=armor_stand,tag=airdrop,limit=1] in minecraft:overworld run tellraw @a ["",{"text":"\n"},{"text":"Airdrop has despawned...","color":"red"},{"text":"\n "}]
execute if entity @e[type=armor_stand,tag=airdrop,limit=1] in minecraft:overworld run kill @e[type=armor_stand,tag=airdrop]
execute if entity @e[type=armor_stand,tag=airdrop2,limit=1] in minecraft:overworld run kill @e[type=armor_stand,tag=airdrop2]