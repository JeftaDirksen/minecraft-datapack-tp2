schedule function tp:message 1800s

tellraw @a ["",{text:"Teleport commands: ",color:"green"},{text:"Show",color:"yellow",bold:true,click_event:{action:"run_command",command:"/trigger tp-show"}}]
