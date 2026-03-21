# Minecraft Teleport Datapack (TP2)

A comprehensive teleportation datapack for Minecraft Java Edition that adds various teleportation commands to enhance player mobility and convenience.

## Features

### Core Teleportation Commands
- **TPA (Teleport to Player)**: Request to teleport to another online player
- **Home**: Set a home location and teleport back to it
- **Spawn**: Teleport to the world spawn point
- **Random**: Teleport to a random location in the world
- **Back**: Return to your previous location after teleporting

### Additional Features
- **Cooldown System**: Prevents spam teleportation with configurable cooldowns
- **Interactive Menus**: Clickable command interfaces for easy access
- **Player ID System**: Efficient player selection for TPA requests
- **Automatic Messages**: Periodic reminders of available commands

## Installation

1. Download or copy the datapack folder
2. Place the `minecraft-datapack-tp2` folder in your world's `datapacks` directory
3. Run `/reload` in-game or restart the server
4. The datapack will automatically initialize

## Usage

### Basic Commands
All commands are accessed through Minecraft's trigger system. Use `/trigger <command>` or click the interactive buttons that appear in chat.

- `/trigger tp-show` - Display the list of available commands
- `/trigger tpa` - Initiate a teleport request to another player
- `/trigger tp-home` - Teleport to your set home location
- `/trigger tp-spawn` - Teleport to the world spawn
- `/trigger tp-random` - Teleport to a random location
- `/trigger tp-sethome` - Set your current location as home
- `/trigger tp-back` - Return to your previous location

### TPA System
1. Run `/trigger tpa` to see a list of online players
2. Click on a player's name to send a teleport request
3. The target player will receive a notification
4. Target can accept with `/trigger tpa-accept` or cancel with `/trigger tpa-cancel`
5. If accepted, you'll teleport to their location after a brief delay

### Cooldowns
- Teleport commands have cooldowns to prevent abuse
- Cooldown time is displayed when attempting to use a command too soon
- Cooldowns decrease by 1 second every second

## Compatibility

- **Minecraft Version**: 1.21+ (Pack Format 64)
- **Server Type**: Works on both single-player and multiplayer servers
- **Other Mods**: Compatible with most mods (may conflict with other teleportation mods)

## Configuration

The datapack includes several configurable elements:
- Cooldown durations (10 seconds)
- Message intervals (30 minutes for command reminders)
- Player ID range (up to 100 players supported)

## Technical Details

- Uses Minecraft's scoreboard system for data storage
- Implements trigger objectives for command activation
- Scheduled functions for periodic tasks
- JSON text components for interactive chat messages

## Troubleshooting

- **Commands not working**: Ensure the datapack is properly installed and reloaded
- **No home set**: Use `/trigger tp-sethome` before trying to teleport home
- **Cooldown messages**: Wait for the cooldown to expire
- **TPA not working**: Check that the target player is online and accepting requests

## License

This datapack is provided as-is for personal use. Feel free to modify and distribute, but please credit the original work.