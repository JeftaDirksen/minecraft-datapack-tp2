schedule function tp:cooldown 1s

scoreboard players add @a tp-cooldown 0
scoreboard players remove @a[scores={tp-cooldown=1..}] tp-cooldown 1
