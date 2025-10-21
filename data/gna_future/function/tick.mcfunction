execute as @a[scores={gavant=1}] at @s run function gna_future:entv

execute as @a at @s if dimension gna_future:videg if score #temp temp >= #180 temp run function gna_future:tp_marsg

execute as @a[scores={tp_to_spaceship=2}] at @s run scoreboard players set @s gavant 4
execute as @a[scores={tp_to_spaceship=2}] at @s run scoreboard players set @s tp_to_spaceship 0

execute as @a[scores={tp_to_spaceship=1}] at @s run scoreboard players set @s gavant 1
execute as @a[scores={tp_to_spaceship=1}] at @s run scoreboard players set @s tp_to_spaceship 0
scoreboard players enable @a tp_to_spaceship

scoreboard players set @a hasSpawn 0
execute store result score @a hasSpawn run data get entity @s SpawnPoint[0]
execute as @a[scores={hasSpawn=0}] if dimension gna_future:gna_mars at @e[type= minecraft:armor_stand, tag=spawnmars,limit=1] run spawnpoint @s ~ ~ ~

execute as @a if dimension gna_future:videg at @s run bossbar set minecraft:temprestant players @s

#permet d'ouvrir le dialogue la 1er fois :
execute as @a at @s unless score @s gavant >= 0 gavant run scoreboard players set @s gavant 0
execute as @a[scores={gavant=0}] at @s run dialog show @s gna_future:start_gspace

execute as @a[scores={tireg=1}] if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:item_model":"gna_future:gna_pistolet"}}}] at @s anchored eyes run function gna_future:tire
execute as @a if score @s tireg >= #1 temp run scoreboard players set @s tireg 0
execute as @e[type=armor_stand,tag=bulette] at @s run function gna_future:armor_bulette

execute as @e[type=item,nbt={Item:{id:"minecraft:emerald",components:{"minecraft:item_model":"gna_future:xionite"}}}] at @s run function gna_future:emerald
execute as @e[type= minecraft:armor_stand, tag=fuze_g] at @s unless score @s temp matches 1 run function gna_future:arfuzes
execute as @e[type=interaction,tag=fuze_g] store success entity @s attack.player[] int 0 on attacker run execute as @n[type=armor_stand,tag=fuze_g] at @s run function gna_future:break_fuze
execute as @e[type=interaction,tag=fuze_g] store success entity @s interaction.player[] int 0 on target run execute as @n[type=armor_stand,tag=fuze_g] at @s run function gna_future:voyage

execute as @e[type=armor_stand,tag=bulette] at @s run scoreboard players add @s tireg 1
execute as @e[type=armor_stand,tag=bulette,scores={tireg=200}] run kill @s

recipe give @a gna_future:stick_to_oak