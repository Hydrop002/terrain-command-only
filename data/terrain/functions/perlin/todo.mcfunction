# 执行者为op
execute unless entity @e[tag=cursor] run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0,Duration:2147483647,Tags:["cursor"]}
tp @e[tag=cursor] ~ 0 ~

execute as @e[tag=cursor] store result score @s pos_x run data get entity @s Pos[0]
execute as @e[tag=cursor] store result score @s pos_z run data get entity @s Pos[2]
scoreboard players operation @e[tag=cursor] pos_x /= unit global
scoreboard players operation @e[tag=cursor] pos_x *= unit global
scoreboard players operation @e[tag=cursor] pos_z /= unit global
scoreboard players operation @e[tag=cursor] pos_z *= unit global
execute as @e[tag=cursor] store result entity @s Pos[0] double 1 run scoreboard players get @s pos_x
execute as @e[tag=cursor] store result entity @s Pos[2] double 1 run scoreboard players get @s pos_z
execute as @e[tag=cursor] at @s run tp @s ~0.5 ~ ~0.5

execute at @e[tag=cursor] if block ~ ~ ~ minecraft:air unless entity @e[tag=todo,distance=..0.1] run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0,Duration:2147483647,Tags:["pixel","todo","temp"]}
execute at @e[tag=cursor] as @e[tag=todo,distance=..0.1] unless score @s state matches -2147483648..2147483647 run scoreboard players set @s state 0
execute at @e[tag=cursor] as @e[tag=todo,distance=..0.1] unless score @s rand matches -2147483648..2147483647 store result score @s rand run data get entity @s UUIDLeast 0.0000000001