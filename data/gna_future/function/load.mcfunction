say Datapack : Gna_future load !

#chargement des scores
scoreboard objectives add gavant dummy
scoreboard players set 0 gavant 0
scoreboard objectives add tireg minecraft.used:minecraft.warped_fungus_on_a_stick

scoreboard objectives add hasSpawn dummy


scoreboard objectives add tp_to_spaceship trigger

scoreboard objectives add temp dummy
bossbar add temprestant "Time before ejection"
bossbar set minecraft:temprestant color red
bossbar set minecraft:temprestant max 180
bossbar set minecraft:temprestant value 0
scoreboard players set #temp temp 0
scoreboard players set #180 temp 180
scoreboard players set #1 temp 1

#chargement du vaisseau
execute in gna_future:videg run forceload add -10 -10 5 5
execute in gna_future:videg run place jigsaw gna_future:alex5 gna_future:alex5 20 0 60 0
execute as @e[type= minecraft:armor_stand,tag=clampe] at @s run scoreboard players set @s gavant 1