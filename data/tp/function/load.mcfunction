# TPA
scoreboard objectives add tpa-id dummy
scoreboard objectives add tpa-id-temp dummy
scoreboard objectives add tpa trigger "Request teleport"
scoreboard objectives add tpa-accept trigger "Accept teleport"
scoreboard objectives add tpa-cancel trigger "Cancel teleport"

# Diff
scoreboard objectives add tp-diff-x dummy
scoreboard objectives add tp-diff-y dummy
scoreboard objectives add tp-diff-z dummy
scoreboard objectives add tp-diff-d dummy

# Back
scoreboard objectives add tp-back trigger "Teleport back"
scoreboard objectives add tp-back-set dummy
scoreboard objectives add tp-back-x dummy
scoreboard objectives add tp-back-y dummy
scoreboard objectives add tp-back-z dummy
scoreboard objectives add tp-back-d dummy

# Home
scoreboard objectives add tp-sethome trigger "Set home"
scoreboard objectives add tp-home trigger "Teleport home"
scoreboard objectives add tp-home-set dummy
scoreboard objectives add tp-home-x dummy
scoreboard objectives add tp-home-y dummy
scoreboard objectives add tp-home-z dummy
scoreboard objectives add tp-home-d dummy

# Spawn
scoreboard objectives add tp-spawn trigger "Teleport to spawn"

# Random
scoreboard objectives add tp-random trigger "Teleport to random location"

# General
scoreboard objectives add tp-show trigger "Show available commands"
scoreboard objectives add tp-cooldown dummy
scoreboard objectives add tp-onjoin dummy
function tp:triggers
function tp:playerids
function tp:onjoin
function tp:cooldown
function tp:message
