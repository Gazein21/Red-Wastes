execute as @e[type= minecraft:armor_stand,tag=clampe,scores={gavant=1}] at @s run setblock ~ ~-1 ~ minecraft:redstone_block
execute as @e[type= minecraft:armor_stand,tag=clampe,scores={gavant=2}] at @s run setblock ~ ~-1 ~ minecraft:sea_lantern

execute as @e[type= minecraft:armor_stand,tag=clampe,scores={gavant=2}] at @s run scoreboard players set @s gavant 0
execute as @e[type= minecraft:armor_stand,tag=clampe] at @s run scoreboard players add @s gavant 1

execute as @e[type= minecraft:armor_stand,tag=clampe] at @s in gna_future:videg run playsound minecraft:item.goat_horn.sound.5 block @p ~ ~ ~ 0.1 2
execute store result bossbar minecraft:temprestant value run scoreboard players get #temp temp
scoreboard players add #temp temp 1

execute as @a if dimension gna_future:gna_mars at @s run bossbar set minecraft:temprestant visible true

bossbar set minecraft:temprestant players @a

execute if score #temp temp <= #180 temp unless score #temp temp matches 0 run schedule function gna_future:clampe 1s