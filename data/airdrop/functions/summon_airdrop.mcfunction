# summoning airdrop procedure
# auto command input
#
# DON'T TOUCH ANYTHING IN HERE except line 11 - spreadplayers range (default: 300)

# Summon the armor stand at commandblock or player position (just temporarily dw bout it)
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Rotation:[90.0f],Tags:["airdrop"]}


# Spread the armor stand to a random location within 300 blocks of the center (~ ~ ~)
execute as @e[type=armor_stand,tag=airdrop,limit=1] at @s run spreadplayers 0 0 0 300 false @s

# Spawn second armor stand x+1 from first armor stand
execute as @e[type=armor_stand,tag=airdrop,limit=1] at @s run summon minecraft:armor_stand ~1 ~ ~ {Invisible:true,Rotation:[270.0f],Tags:["airdrop2"]}


# SIMPLE CHECKER (IF ARMORSTAND SPAWNED - SPAWN AIRDROP | IF ARMORSTAND FAILED TO SPAWN - SCHEDULE NEXT AIRDROP IN 10 MINUTES AND ANNOUNCE IT)

# if yes (it will likely to happen)
execute if entity @e[type=armor_stand,tag=airdrop,limit=1] in minecraft:overworld run schedule function airdrop:announce_coordinates 2s

# if no (you fucked something up / one of armorstands coudn't be spawned due to chunks)
execute unless entity @e[type=armor_stand,tag=airdrop,limit=1] in minecraft:overworld run tellraw @a ["",{"text":"\n"},{"text":"Airdrop has crashed... Next Airdrop in 10 minutes.","color":"red"},{"text":"\n "}]
execute unless entity @e[type=armor_stand,tag=airdrop,limit=1] in minecraft:overworld run schedule function airdrop:summon_airdrop 600s

# despawn feature after 10 minutes (if no one gets to the airdrop - despawn it - logical)
execute if entity @e[type=armor_stand,tag=airdrop,limit=1] in minecraft:overworld run schedule function airdrop:despawn 600s
