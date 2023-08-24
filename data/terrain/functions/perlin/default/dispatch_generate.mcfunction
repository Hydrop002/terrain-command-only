# 执行者为todo
scoreboard players operation @s[tag=!populate] math = @s rand
scoreboard players operation @s[tag=!polulate] math %= 4 math
execute if score @s[tag=!populate] math matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0,Duration:2147483647,Tags:["Picea","init"]}
execute if score @s[tag=!populate] math matches 1..2 run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0,Duration:2147483647,Tags:["Picea","init"]}
execute if score @s[tag=!populate] math matches 1..3 run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0,Duration:2147483647,Tags:["Picea","init"]}
scoreboard players operation @s[tag=!populate] math = @s rand
scoreboard players operation @s[tag=!populate] math /= 4 math
scoreboard players operation @s[tag=!populate] math %= 4 math
execute if score @s[tag=!populate] math matches 0 run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0,Duration:2147483647,Tags:["fern","init"]}
execute if score @s[tag=!populate] math matches 1..3 run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0,Duration:2147483647,Tags:["grass","init"]}
execute if entity @s[tag=!populate] run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0,Duration:2147483647,Tags:["grass","init"]}
execute if entity @s[tag=!populate] run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0,Duration:2147483647,Tags:["grass","init"]}
execute if entity @s[tag=!populate] run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0,Duration:2147483647,Tags:["grass","init"]}
execute as @e[tag=init,distance=..0.1] run function terrain:perlin/populate
tag @s add populate

execute as @e[tag=pixel] if score @s rand = @e[tag=todo,distance=..0.1,limit=1] rand run function terrain:perlin/default/generate

execute as @e[tag=fern] at @s unless block ~-4 0 ~-4 minecraft:air unless block ~-4 0 ~4 minecraft:air unless block ~4 0 ~-4 minecraft:air unless block ~4 0 ~4 minecraft:air run function terrain:perlin/default/fern
execute as @e[tag=grass] at @s unless block ~-4 0 ~-4 minecraft:air unless block ~-4 0 ~4 minecraft:air unless block ~4 0 ~-4 minecraft:air unless block ~4 0 ~4 minecraft:air run function terrain:perlin/default/grass
execute as @e[tag=Picea] at @s if entity @e[tag=Picea,distance=0.1..1.9] run kill @s
execute as @e[tag=Picea] at @s unless block ~-10 0 ~-10 minecraft:air unless block ~-10 0 ~10 minecraft:air unless block ~10 0 ~-10 minecraft:air unless block ~10 0 ~10 minecraft:air run function terrain:perlin/default/spruce