tellraw @s ["",{text:"Show commands",color:"yellow",bold:true,click_event:{action:"run_command",command:"/trigger tp-show"}},{text:" Show this list",color:"green"}]
tellraw @s ["",{text:"Teleport to player",color:"yellow",bold:true,click_event:{action:"run_command",command:"/trigger tpa"}},{"text":" Request teleport to another player","color":"green"}]
tellraw @s ["",{text:"Set home",color:"yellow",bold:true,click_event:{action:"run_command",command:"/trigger tp-sethome"}},{"text":" Set your home at current position","color":"green"}]
tellraw @s ["",{text:"Teleport home",color:"yellow",bold:true,click_event:{action:"run_command",command:"/trigger tp-home"}},{"text":" Teleport to your home position","color":"green"}]
