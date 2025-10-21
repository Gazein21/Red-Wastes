execute as @s at @s run execute in gna_future:gna_mars run tp @s 0 300 0
execute in gna_future:gna_mars run summon armor_stand 0 300 0 {Invisible:1b,DisabledSlots:4144959,Invulnerable:1b,Tags:["spawnmars"]}
effect give @s minecraft:resistance 10 255 true
bossbar set minecraft:temprestant visible false

execute as @a[ gamemode=adventure] at @s if dimension gna_future:gna_mars run gamemode survival @s

schedule function gna_future:spawnmars 7s