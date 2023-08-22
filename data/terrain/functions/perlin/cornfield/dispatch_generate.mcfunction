# 执行者为todo
scoreboard players operation @s[tag=!populate] math = @s rand
scoreboard players operation @s[tag=!populate] math %= 256 math
execute if score @s[tag=!populate] math matches 0 run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0,Duration:2147483647,Tags:["circle","init"]}
execute as @e[tag=init,distance=..0.1] run function terrain:perlin/populate
execute if score @s[tag=!populate] math matches 1..4 run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0,Duration:2147483647,Tags:["jackstraw","init"]}
execute as @e[tag=init,distance=..0.1] run function terrain:perlin/populate
execute if score @s[tag=!populate] math matches 5..12 run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0,Duration:2147483647,Tags:["oak","init"]}
execute as @e[tag=init,distance=..0.1] run function terrain:perlin/populate
tag @s add populate

execute as @e[tag=pixel] if score @s rand = @e[tag=todo,distance=..0.1,limit=1] rand run function terrain:perlin/cornfield/generate

execute as @e[tag=oak] at @s unless block ~ 0 ~1 minecraft:air run function terrain:perlin/cornfield/oak
execute as @e[tag=jackstraw] at @s run function terrain:perlin/cornfield/jackstraw
execute as @e[tag=circle] at @s unless block ~-64 0 ~-64 minecraft:air unless block ~-64 0 ~ minecraft:air unless block ~-64 0 ~64 minecraft:air unless block ~ 0 ~-64 minecraft:air unless block ~ 0 ~64 minecraft:air unless block ~64 0 ~-64 minecraft:air unless block ~64 0 ~ minecraft:air unless block ~64 0 ~64 minecraft:air run function terrain:perlin/cornfield/circle