schedule function tp:triggers 5

# TPA trigger
scoreboard players enable @a tpa
scoreboard players add @a tpa 0
execute as @a[scores={tpa=1}] run function tp:tpa-init
execute as @a[scores={tpa=2..}] run function tp:tpa
scoreboard players reset @a[scores={tpa=1..}] tpa

# TPA-accept trigger
execute as @a[scores={tpa-accept=1..}] run function tp:tpa-accept
scoreboard players reset @a[scores={tpa-accept=1..}] tpa-accept

# TPA-cancel trigger
execute as @a[scores={tpa-cancel=1..}] run function tp:tpa-cancel
scoreboard players reset @a[scores={tpa-cancel=1..}] tpa-cancel

# SetHome
scoreboard players enable @a tp-sethome
execute as @a[scores={tp-sethome=1..}] run function tp:sethome
scoreboard players reset @a[scores={tp-sethome=1..}] tp-sethome

# Home trigger
scoreboard players enable @a tp-home
scoreboard players add @a[scores={tp-home=1..}] tp-home-y 0
execute as @a[scores={tp-home=1..,tp-home-y=1..,tp-cooldown=1..}] run tellraw @s ["",{"text":"Can't do that just yet, wait ","color":"red"},{"score":{"name":"@s","objective":"tp-cooldown"},"color":"red"},{"text":" sec.","color":"red"}]
tellraw @a[scores={tp-home=1..,tp-home-y=0}] ["",{"text":"No home set","color":"red"}]
execute as @a[scores={tp-home=1..,tp-home-y=1..,tp-cooldown=0}] run function tp:home
scoreboard players reset @a[scores={tp-home=1..}] tp-home

# Back trigger
scoreboard players enable @a tp-back
scoreboard players add @a[scores={tp-back=1..}] tp-back-y 0
execute as @a[scores={tp-back=1..,tp-back-y=1..,tp-cooldown=1..}] run tellraw @s ["",{"text":"Can't do that just yet, wait ","color":"red"},{"score":{"name":"@s","objective":"tp-cooldown"},"color":"red"},{"text":" sec.","color":"red"}]
tellraw @a[scores={tp-back=1..,tp-back-y=0}] ["",{"text":"Nowhere to go back to","color":"red"}]
execute as @a[scores={tp-back=1..,tp-back-y=1..,tp-cooldown=0}] run function tp:back
scoreboard players reset @a[scores={tp-back=1..}] tp-back
