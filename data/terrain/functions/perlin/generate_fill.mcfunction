# 执行者为pixel
execute at @s[scores={count=1..,perlin=1..}] run tp @s ~ ~-1 ~
execute at @s[scores={count=1..,perlin=1..}] run setblock ~ ~ ~ minecraft:dirt
execute if entity @s[scores={count=1..}] run scoreboard players remove @s count 1
execute if entity @s[scores={perlin=1..}] run scoreboard players remove @s perlin 1
execute if entity @s[scores={count=1..,perlin=1..}] run function terrain:perlin/generate_fill