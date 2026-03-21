schedule function tp:onjoin 10

# Make sure all online players have a onjoin score set
scoreboard players add @a tp-onjoin 0

# TPA - Reset tpa-source/tpa-target tag for players with a onjoin score of 0
tag @a[scores={tp-onjoin=0}] remove tpa-source
tag @a[scores={tp-onjoin=0}] remove tpa-target

# Set onjoin score to 1 only for online players
scoreboard players set * tp-onjoin 0
scoreboard players set @a tp-onjoin 1
