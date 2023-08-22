# 执行者为任意decoration
execute store result score @s pos_x run data get entity @s Pos[0]
execute store result score @s rand run data get entity @s UUIDLeast 0.0000000001
scoreboard players operation @s rand %= unit global
scoreboard players operation @s pos_x += @s rand
execute store result entity @s Pos[0] double 1 run scoreboard players get @s pos_x

execute store result score @s pos_z run data get entity @s Pos[2]
execute store result score @s rand run data get entity @s UUIDMost 0.0000000001
scoreboard players operation @s rand %= unit global
scoreboard players operation @s pos_z += @s rand
execute store result entity @s Pos[2] double 1 run scoreboard players get @s pos_z

execute at @s positioned ~0.5 ~ ~0.5 store result entity @s Pos[1] double 1 run scoreboard players get @e[tag=pixel,distance=..0.1,limit=1] perlin
execute at @s run tp ~0.5 ~1 ~0.5

tag @s remove init