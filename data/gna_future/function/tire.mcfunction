execute anchored eyes run summon armor_stand ^ ^ ^ {Invisible:1b,Small:1b,NoGravity:1b,Tags:["bulette"],Marker:1b}
playsound minecraft:block.coral_block.step
data modify entity @e[type=armor_stand,tag=bulette,limit=1,sort=nearest] Rotation set from entity @s Rotation
scoreboard players set @a tireg 0
