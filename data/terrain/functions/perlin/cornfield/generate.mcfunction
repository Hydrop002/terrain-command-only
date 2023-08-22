# 执行者为pixel
scoreboard players set @s depth 16

execute unless score @s layer matches -2147483648..2147483647 run scoreboard players set @s layer 0
execute if score @s layer matches 0 store result entity @s Pos[1] double 1 run scoreboard players get @s perlin
execute if score @s[tag=path] layer matches 0 at @s run setblock ~ ~ ~ minecraft:grass_path
execute if score @s[tag=!path] layer matches 0 at @s run setblock ~ ~ ~ minecraft:farmland
execute if score @s[tag=!path] layer matches 0 at @s run setblock ~ ~1 ~ minecraft:wheat[age=7]
execute if score @s layer matches 0 run scoreboard players remove @s depth 1

execute if score @s layer matches 0 run scoreboard players set @s count 3
execute if score @s layer matches 0 run scoreboard players set @s layer 1
execute if score @s layer matches 1 run function terrain:perlin/cornfield/generate_dirt
execute if score @s layer matches 1 if score @s perlin matches ..0 run function terrain:perlin/kill

execute if score @s layer matches 1 if score @s count matches 0 run scoreboard players set @s count 256
execute if score @s layer matches 1 if score @s count matches 256 run scoreboard players set @s layer 2
execute if score @s layer matches 2 run function terrain:perlin/cornfield/generate_stone
execute if score @s layer matches 2 if score @s perlin matches ..0 run function terrain:perlin/kill