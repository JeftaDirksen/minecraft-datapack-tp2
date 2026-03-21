function tp:setback

# Switch dimension
execute as @s[scores={tp-home-d=-1}] in the_nether run tp 0 0 0
execute as @s[scores={tp-home-d=0}] in overworld run tp 0 0 0
execute as @s[scores={tp-home-d=1}] in the_end run tp 0 0 0

# Set diff = Home pos
scoreboard players operation @s tp-diff-x = @s tp-home-x
scoreboard players operation @s tp-diff-y = @s tp-home-y
scoreboard players operation @s tp-diff-z = @s tp-home-z

# TP X
execute as @s[scores={tp-diff-x=1..}] run function tp:x
execute as @s[scores={tp-diff-x=..-1}] run function tp:-x

# TP Y
execute as @s[scores={tp-diff-y=1..}] run function tp:y
execute as @s[scores={tp-diff-y=..-1}] run function tp:-y

# TP Z
execute as @s[scores={tp-diff-z=1..}] run function tp:z
execute as @s[scores={tp-diff-z=..-1}] run function tp:-z

# Center on block
execute at @s align xyz run tp @s ~.5 ~.5 ~.5

scoreboard players set @s tp-cooldown 60
tellraw @s ["",{text:"Teleported home",color:"green"}]
