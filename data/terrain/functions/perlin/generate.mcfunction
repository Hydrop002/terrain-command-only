# 执行者为pixel
execute store result entity @s Pos[1] double 1 run scoreboard players get @s perlin
execute at @s run setblock ~ ~ ~ minecraft:grass_block
scoreboard players set @s count 3
function terrain:perlin/generate_fill
scoreboard players set @s count 256
function terrain:perlin/generate_fill2
kill @s