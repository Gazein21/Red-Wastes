execute in gna_future:videg run tp @s @e[tag=spawnspace,limit=1]
execute in gna_future:videg run spawnpoint @s 0 59 0
function gna_future:clampe
scoreboard players set @e[type= minecraft:armor_stand,tag=clampe] gavant 1
scoreboard players set @s gavant 2
bossbar set minecraft:temprestant visible true
execute as @a at @s if dimension gna_future:videg run gamemode adventure @s

execute as @e[type=minecraft:armor_stand,tag=spawnspace] at @s in gna_future:videg run playsound minecraft:record.broken player @a ~ ~ ~ 20 1 0.5
