execute as @a[tag=tpa-source] run function tp:setback
teleport @a[tag=tpa-source] @s

tellraw @a[tag=tpa-target] ["",{text:"Teleport from ",color:"green"},{selector:"@a[tag=tpa-source]",color:"aqua"},{text:" accepted",color:"green"}]
tellraw @a[tag=tpa-source] ["",{text:"Teleported to ",color:"green"},{selector:"@a[tag=tpa-target]",color:"aqua"},{text:" (",color:"green"},{text:"Go back",color:"yellow",bold:true,click_event:{action:"run_command",command:"/trigger tp-back"}},{text:")",color:"green"}]

tag @a remove tpa-source
tag @a remove tpa-target
schedule clear tpa:tpa-expire
scoreboard players reset * tpa-cancel
