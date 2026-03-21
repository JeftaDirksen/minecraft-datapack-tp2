execute store result score @s tp-home-x run data get entity @s Pos[0]
execute store result score @s tp-home-y run data get entity @s Pos[1]
execute store result score @s tp-home-z run data get entity @s Pos[2]
scoreboard players set @s[nbt={Dimension:"minecraft:overworld"}] tp-home-d 0
scoreboard players set @s[nbt={Dimension:"minecraft:the_nether"}] tp-home-d -1
scoreboard players set @s[nbt={Dimension:"minecraft:the_end"}] tp-home-d 1
tellraw @s ["",{"text":"Your home has been set","color":"green"}]
