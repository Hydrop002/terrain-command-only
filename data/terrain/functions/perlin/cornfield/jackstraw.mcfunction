setblock ~ ~-1 ~ minecraft:dirt
setblock ~ ~ ~ minecraft:oak_fence
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,NoBasePlate:1b,ShowArms:1b,Pose:{Head:[180f,0f,0f],LeftArm:[0f,0f,-80f],RightArm:[0f,0f,100f],LeftLeg:[180f,0f,0f],RightLeg:[180f,0f,0f]},ArmorItems:[{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16493613}}},{}]}
summon minecraft:armor_stand ~ ~0.9 ~ {Invisible:1b,NoGravity:1b,Pose:{Head:[30f,0f,10f]},ArmorItems:[{},{},{},{id:"minecraft:carved_pumpkin",Count:1b}],Small:1}
summon minecraft:armor_stand ~0.1 ~0.2 ~0.55 {Invisible:1b,NoGravity:1b,Pose:{RightArm:[90f,0f,55f]},HandItems:[{id:"minecraft:wheat",Count:1b},{}]}
summon minecraft:armor_stand ~0.1 ~0.2 ~0.65 {Invisible:1b,NoGravity:1b,Pose:{RightArm:[90f,0f,55f]},HandItems:[{id:"minecraft:wheat",Count:1b},{}]}
summon minecraft:armor_stand ~0.1 ~0.2 ~0.45 {Invisible:1b,NoGravity:1b,Pose:{RightArm:[90f,0f,55f]},HandItems:[{id:"minecraft:wheat",Count:1b},{}]}
summon minecraft:armor_stand ~-0.05 ~-0.2 ~0.55 {Invisible:1b,NoGravity:1b,Pose:{LeftArm:[90f,0f,-130f]},HandItems:[{},{id:"minecraft:wheat",Count:1b}]}
summon minecraft:armor_stand ~-0.05 ~-0.2 ~0.65 {Invisible:1b,NoGravity:1b,Pose:{LeftArm:[90f,0f,-130f]},HandItems:[{},{id:"minecraft:wheat",Count:1b}]}
summon minecraft:armor_stand ~-0.05 ~-0.2 ~0.45 {Invisible:1b,NoGravity:1b,Pose:{LeftArm:[90f,0f,-130f]},HandItems:[{},{id:"minecraft:wheat",Count:1b}]}
summon minecraft:armor_stand ~-0.55 ~ ~0.15 {Invisible:1b,NoGravity:1b,Pose:{Head:[0f,0f,135f]},ArmorItems:[{},{},{},{id:"minecraft:wheat",Count:1b}]}
summon minecraft:armor_stand ~-0.55 ~ ~0.275 {Invisible:1b,NoGravity:1b,Pose:{Head:[0f,0f,135f]},ArmorItems:[{},{},{},{id:"minecraft:wheat",Count:1b}]}
summon minecraft:armor_stand ~-0.55 ~ ~0.4 {Invisible:1b,NoGravity:1b,Pose:{Head:[0f,0f,135f]},ArmorItems:[{},{},{},{id:"minecraft:wheat",Count:1b}]}

kill @s[tag=jackstraw]