execute store result score @s tp-back-x run data get entity @s Pos[0]
execute store result score @s tp-back-y run data get entity @s Pos[1]
execute store result score @s tp-back-z run data get entity @s Pos[2]
scoreboard players set @s[nbt={Dimension:"minecraft:overworld"}] tp-back-d 0
scoreboard players set @s[nbt={Dimension:"minecraft:the_nether"}] tp-back-d -1
scoreboard players set @s[nbt={Dimension:"minecraft:the_end"}] tp-back-d 1
