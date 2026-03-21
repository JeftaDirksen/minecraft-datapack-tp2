function tp:setback

execute in overworld run tp @s 0 0 0
spreadplayers 0 0 0 10 false @s

scoreboard players set @s tp-cooldown 10
tellraw @s ["",{"text":"Teleported to spawn (","color":"green"},{text:"Go back",color:"yellow",bold:true,click_event:{action:"run_command",command:"/trigger tp-back"}},{text:")",color:"green"}]
