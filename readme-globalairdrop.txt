ReAirDrop Global Airdrop Datapack 

/function airdrop:setup - setup procedure - how to make automatic airdrop spawn every 1 hour
/function airdrop:summon_airdrop - Manually spawning airdrop excluding timer


In total you'll need 5 commandblocks:
2 for automating airdrop every 1 hour (one is for adding each tick, second one is for checking if everything works correctly)
3 for announcing when airdrop is being picked up by a player

Here's the 3 commands for announcing picked up airdrop and how they supposed to be configured

# repeating commandblock (repeat / unconditional / always active)
execute at @a if entity @e[type=armor_stand,tag=airdrop,limit=1, distance=..3] run tellraw @a ["",{"text":"\n"},{"text":"Airdrop has been collected by","color":"yellow"},{"text":" "},{"selector":"@p","color":"red"},{"text":"\n "}]


# chain commandblock (chain / unconditional / always active)
execute at @a if entity @e[type=armor_stand,tag=airdrop,limit=1, distance=..3] run kill @e[type=armor_stand,tag=airdrop]


# chain commandblock (chain / unconditional / always active)
execute at @a if entity @e[type=armor_stand,tag=airdrop2,limit=1, distance=..4] run kill @e[type=armor_stand,tag=airdrop2]

In total you can edit 3 functions in total to customize messages, spawn range etc.
note: if you decide to touch something in there - backup your fucking files!!
location: \data\airdrop\functions

- announce_coordinates.mcfunction
- summon_airdrop.mcfunction
- repeat_every_hour.mcfunction

and for those other 2 functions...

- setup.mcfunction
- despawn.mcfunction 

…you touch that shit on your own responsibility (but seriously don't, pain in the ass)