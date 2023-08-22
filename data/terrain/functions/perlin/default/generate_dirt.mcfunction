# 执行者为pixel
execute at @s[scores={count=1..,perlin=1..,depth=1..}] run tp @s ~ ~-1 ~
execute at @s[scores={count=1..,perlin=1..,depth=1..}] run setblock ~ ~ ~ minecraft:dirt
scoreboard players remove @s count 1
scoreboard players remove @s perlin 1
scoreboard players remove @s depth 1
execute if entity @s[scores={count=1..,perlin=1..,depth=1..}] run function terrain:perlin/default/generate_dirt