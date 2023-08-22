execute if block ~ ~1 ~1 minecraft:air run setblock ~ ~1 ~1 minecraft:dispenser[facing=north]{Items:[{Slot:0b,id:"minecraft:bone_meal",Count:64b},{Slot:1b,id:"minecraft:bone_meal",Count:64b},{Slot:2b,id:"minecraft:bone_meal",Count:64b},{Slot:3b,id:"minecraft:bone_meal",Count:64b},{Slot:4b,id:"minecraft:bone_meal",Count:64b},{Slot:5b,id:"minecraft:bone_meal",Count:64b},{Slot:6b,id:"minecraft:bone_meal",Count:64b},{Slot:7b,id:"minecraft:bone_meal",Count:64b},{Slot:8b,id:"minecraft:bone_meal",Count:64b}]}
execute if block ~ ~1 ~1 minecraft:dispenser run setblock ~ ~ ~ minecraft:dirt
execute if block ~ ~1 ~1 minecraft:dispenser run setblock ~ ~1 ~ minecraft:oak_sapling[stage=1]
execute if block ~ ~1 ~1 minecraft:dispenser run setblock ~ ~3 ~1 minecraft:chain_command_block[facing=down]{auto:1b,Command:"setblock ~ ~-1 ~ minecraft:air"}
execute if block ~ ~1 ~1 minecraft:dispenser run setblock ~ ~4 ~1 minecraft:repeating_command_block[facing=down]{auto:1b,Command:"setblock ~ ~-2 ~ minecraft:redstone_block"}
execute if block ~ ~1 ~1 minecraft:dispenser run setblock ~ ~5 ~1 minecraft:chain_command_block[conditional=true,facing=down]{auto:1b,Command:"fill ~ ~-4 ~ ~ ~1 ~ minecraft:air"}
execute if block ~ ~1 ~1 minecraft:dispenser run setblock ~ ~6 ~1 minecraft:repeating_command_block[facing=down]{auto:1b,Command:"execute if block ~ ~-5 ~-1 minecraft:oak_log run setblock ~ ~-6 ~-1 minecraft:oak_log"}

kill @s[tag=oak]