tp @s ^ ^ ^0.9
particle minecraft:dust{color:[1.0,0.4,0.0],scale:1.0} ~ ~ ~ 0 0 0 10 10 normal
damage @e[distance=..1,limit=1,type=!minecraft:armor_stand,type=!minecraft:item] 10 minecraft:player_attack
execute if block ~ ~ ~ minecraft:glass run fill ~ ~ ~ ~ ~ ~ air destroy
execute unless block ~ ~ ~ air unless block ~ ~ ~ cave_air unless block ~ ~ ~ void_air run kill @s